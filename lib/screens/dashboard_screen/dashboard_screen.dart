import 'dart:async';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:formz/formz.dart';
import 'package:just_audio/just_audio.dart';
import 'package:just_audio_background/just_audio_background.dart';
import 'package:palette_generator/palette_generator.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:play_music/screens/dashboard_screen/components/seek_bar.dart';
import 'package:rxdart/rxdart.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import '../../data_layer/model/info_song_model.dart';
import '../custom_widgets/barrel_custom_widgets.dart';
import '../custom_widgets/image_video_custom.dart';
import 'bloc/dashboard_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../common/barrel_common.dart';
import '../../utils/barrel_utils.dart';
import 'package:audio_session/audio_session.dart';
import 'components/control_music_bottom.dart';
import 'components/list_my_musics.dart';
import 'components/panel_control_music.dart';
import 'components/position_data.dart';
import 'components/seek_bar_only_show.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (SizeConfig.appBarSize == null) {
      SizeConfig().init(context);
    }

    return Scaffold(
      backgroundColor: COLOR_CONST.white,
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => DashboardBloc(),
          ),
        ],
        child: const _DashboardScreenForm(),
      ),
    );
  }
}

class _DashboardScreenForm extends StatefulWidget {
  const _DashboardScreenForm({Key? key}) : super(key: key);

  @override
  _DashboardScreenFormState createState() => _DashboardScreenFormState();
}

// ignore: prefer_mixin
class _DashboardScreenFormState extends State<_DashboardScreenForm>
    with WidgetsBindingObserver, SingleTickerProviderStateMixin {
  final _player = AudioPlayer(); // Create a player
  List<Color> colors = [
    COLOR_CONST.black,
    COLOR_CONST.black,
    COLOR_CONST.black,
  ];

  bool isInit = false;

  late AnimationController animationController;
  PanelController panelController = PanelController();
  var playlist = ConcatenatingAudioSource(children: []);

  @override
  // ignore: avoid_void_async
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    permissionStorage();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 15),
    );
    animationController.stop();
  }

  Future<void> permissionStorage() async {
    final status = await Permission.storage.request();
    if (status.isGranted) {
      BlocProvider.of<DashboardBloc>(context).add(GetListMusicEvent());
    }
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.detached) {
      _player.stop();
      _player.dispose();
      panelController.close();
      animationController.dispose();
    }
  }

  @override
  void dispose() async {
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
    _player.dispose();
    panelController.close();
    animationController.dispose();
  }

  Future<void> initListMusic(DashboardState state) async {
    if (!isInit) {
      isInit = true;

      // Define the playlist
      playlist = ConcatenatingAudioSource(
        // Start loading next item just before reaching it
        useLazyPreparation: true,
        // Customise the shuffle algorithm
        shuffleOrder: DefaultShuffleOrder(),
        // Specify the playlist items
        children: state.listMusic,
      );

      final session = await AudioSession.instance;
      await session.configure(const AudioSessionConfiguration.speech());

      _player.playerStateStream.listen((event) async {
        if (event.playing) {
          animationController.repeat();
        } else {
          animationController.stop();
        }
        BlocProvider.of<DashboardBloc>(context)
            .add(ChangeStatusAudiEvent(isPlaying: event.playing));
      }, onError: (Object e, StackTrace stackTrace) {
        print('A stream error occurred: $e');
      });

      _player.currentIndexStream.listen((event) async {
        if (event != null) {
          print("Indexxxxxxxxx ${event}");
          final metadata =
              state.listMusic[event].sequence.first.tag as MediaItem;
          await getColorsImage(metadata.artUri.toString());
        }
      }, onError: (Object e, StackTrace stackTrace) {
        print('A stream error occurred: $e');
      });

      try {
        await _player.setAudioSource(
          playlist,
          initialIndex: 0,
          initialPosition: Duration.zero,
        );
        await _player.setLoopMode(LoopMode.all);
      } catch (e, stackTrace) {
        // Catch load errors: 404, invalid url ...
        print("Error loading playlist: $e");
        print(stackTrace);
      }
    }
  }

  Future<void> changeStatusMusic() async {
    if (_player.playing) {
      _player.pause();
      animationController.stop();
    } else {
      _player.play();
      animationController.repeat();
    }
    BlocProvider.of<DashboardBloc>(context)
        .add(ChangeStatusAudiEvent(isPlaying: _player.playing));
  }

  void nextMusic() async {
    _player.seekToNext();
    animationController.reset();
    animationController.repeat();
    _player.play();
  }

  void pretMusic() async {
    _player.seekToPrevious();
    animationController.reset();
    animationController.repeat();
    _player.play();
  }

  Stream<PositionData> get _positionDataStream =>
      Rx.combineLatest3<Duration, Duration, Duration?, PositionData>(
          _player.positionStream,
          _player.bufferedPositionStream,
          _player.durationStream,
          (position, bufferedPosition, duration) => PositionData(
              position, bufferedPosition, duration ?? Duration.zero));

  Future<PaletteGenerator> getImagePalette(ImageProvider imageProvider) async {
    final PaletteGenerator paletteGenerator =
        await PaletteGenerator.fromImageProvider(imageProvider);
    return paletteGenerator;
  }

  Future<void> getColorsImage(String url) async {
    final dataColors = await getImagePalette(NetworkImage(url));
    colors.clear();
    for (var data in dataColors.colors) {
      if (colors.length == 6) break;
      colors.add(data);
    }

    if (panelController.isPanelOpen) {
      panelController.open();
    }
  }

  Future<void> updatePlayList(List<InfoSongModel> listSong)async{
    BlocProvider.of<DashboardBloc>(context).add(GetListMusicEvent());

    List<AudioSource> listAudio = [];
    for(var data in listSong){
      listAudio.add(
        ClippingAudioSource(
          child: AudioSource.file(data.pathFileLocal,),
          tag: MediaItem(
          id: data.encodeId,
          title: data.title,
          artist: data.artistsNames,
          artUri: Uri.parse(
            data.thumbnailM,)
          )
        )
      );
    }

    playlist.insertAll(0, listAudio);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar:
      extendBody: true,
      body: BlocBuilder<DashboardBloc, DashboardState>(
        buildWhen: (previous, current) =>
            previous.isPlaying != current.isPlaying ||
            previous.statusGetlist != current.statusGetlist ||
            previous.listMusic != current.listMusic,
        builder: (context, state) {
          if (state.statusGetlist.isInProgress) {
            LoadingShowAble.showLoading(clickClose: false);
          } else if (state.statusGetlist.isSuccess) {
            LoadingShowAble.hideLoading();
          }

          if (state.listMusic.isNotEmpty) {
            initListMusic(state);
          }
          return SlidingUpPanel(
              controller: panelController,
              minHeight:
                  getProportionateScreenWidth(70) + SizeConfig.paddingBottom,
              maxHeight: SizeConfig.screenHeight,
              boxShadow: const [],
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              collapsed: ControlMusicBottom(
                animationController: animationController,
                changeStatusMusic: changeStatusMusic,
                nextMusic: nextMusic,
                panelController: panelController,
                player: _player,
                positionDataStream: _positionDataStream,
              ),
              panelBuilder: (sc) {
                return PanelControlMusic(
                  player: _player, 
                  panelController: panelController, 
                  animationController: animationController, 
                  positionDataStream: _positionDataStream, 
                  changeStatusMusic: changeStatusMusic, 
                  nextMusic: nextMusic, pretMusic: pretMusic, 
                  colors: colors
                );
              },
              body: ListMyMusics(
                panelController: panelController,
                player: _player,
                updatePlayList: updatePlayList,
              ));
        },
      ),
    );
  }
}