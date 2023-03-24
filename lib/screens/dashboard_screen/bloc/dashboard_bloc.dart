import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:just_audio/just_audio.dart';
import 'package:just_audio_background/just_audio_background.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:play_music/data_layer/model/info_song_model.dart';
import 'package:play_music/data_layer/model/response_model/search_song_respone_model.dart';
import 'package:play_music/data_layer/request_params/search_song_param.dart';
import '../../../common/app_config.dart';
import '../../../common/session_manager.dart';
import '../../../data_layer/api/error_from_server.dart';
import 'package:formz/formz.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io' as io;

import '../../../domain_layer/repository/dashboard_repository.dart';
part 'dashboard_event.dart';
part 'dashboard_state.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  final dashboardRepository = DashboardRepository();
  DashboardBloc() 
      : super(const DashboardState(
        isPlaying: false,
        statusGetlist: FormzSubmissionStatus.initial,
        listMusic: [],
        isAnimationText: false,
      )
    ){
    on<GetListMusicEvent>(_getListMusicEvent);
    on<ChangeStatusAudiEvent>(_changeStatusAudiEvent);
    on<ChangeAnimationTextEvent>(_changeAnimationTextEvent);
  }

  // ignore: avoid_void_async
  void _getListMusicEvent(GetListMusicEvent event, Emitter<DashboardState> emit) async {
    emit(
      state.copyWith(
        statusGetlist: FormzSubmissionStatus.inProgress
      )
    );

    var directory = null;
    var fileList = [];
    List<AudioSource> listAudio = [];
    
    if (Platform.isIOS) {
      directory = await getApplicationSupportDirectory();
    } else {
      directory = await getExternalStorageDirectory();
    }

    final myImagePath = '${directory?.path}/MyMusics';
    await Directory(myImagePath).create();

    fileList = io.Directory(myImagePath).listSync();
    final listSong = await SessionManager.share.getListSong();
    print("AAAAAAAAAAAAAAAAAAAAA: ${listSong?.songs}");

    if(fileList.isEmpty || listSong == null){

      List<InfoSongModel> listSongSearch = [];
      List<InfoSongModel> listSong = [];
      try {
        
        final searchSongParam = SearchSongParam(
          q: "Thị Mầu", 
          ctime: "1678954891", 
          version: "1.9.12", 
          sig: "2aa6707f0596aacc916cd795c600c539d88e71ff89488a39be2b5595195dce98204665f1107aae7ba2315ddd956ef1cb636d7926f6ecef349d33ffae00660ed5", 
          apiKey: "X5BM3w8N7MKozC0B85o4KMlzLZKhV00y"
        );

        final songs1 = await dashboardRepository.searchSong(searchSongParam);
        if(songs1.first.encodeId.isNotEmpty){
          listSongSearch.add(songs1.first);
        }

        searchSongParam.q = "bật lên tình yêu";
        final songs2 = await dashboardRepository.searchSong(searchSongParam);
        if(songs2.first.encodeId.isNotEmpty){
          listSongSearch.add(songs2.first);
        }

        searchSongParam.q = "The Kid LAROI, Justin Bieber - STAY";
        final songs3 = await dashboardRepository.searchSong(searchSongParam);
        if(songs3.first.encodeId.isNotEmpty){
          listSongSearch.add(songs3.first);
        }

        searchSongParam.q = "The Night";
        final songs4 = await dashboardRepository.searchSong(searchSongParam);
        if(songs4.first.encodeId.isNotEmpty){
          listSongSearch.add(songs4.first);
        }
        

        for(var data in listSongSearch){
          final file = await _downloadFile("http://api.mp3.zing.vn/api/streaming/audio/${data.encodeId}/320", "${data.alias}.mp3");

          if(file != null){
            var newSong = data;
            newSong.pathFileLocal = file.path;
            listSong.insert(0, newSong);
          }  
        }

        SessionManager.share.saveListSong(searchSongResponeModel: SearchSongResponeModel(songs: listSong));
        for(var data in listSong){
          print("ABBCCCC: ${data.alias}");
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

      } on ErrorFromServer catch (e) {
        print("Lỗi ${e.errorCode} - ${AppConfig.instance.Cookie}");
      }
      
    }else{
      for(var data in listSong.songs){
        print("ABBCCCC: ${data.alias}");
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
    }

    emit(
      state.copyWith(
        listMusic: listAudio,
        statusGetlist: FormzSubmissionStatus.success
      )
    );
  }

  // ignore: avoid_void_async
  void _changeStatusAudiEvent(ChangeStatusAudiEvent event, Emitter<DashboardState> emit) async {
    emit(
      state.copyWith(
        isPlaying: event.isPlaying
      )
    );
  }

  // ignore: avoid_void_async
  void _changeAnimationTextEvent(ChangeAnimationTextEvent event, Emitter<DashboardState> emit) async {
    emit(
      state.copyWith(
        isAnimationText: !state.isAnimationText
      )
    );
  }

  Future<File?> _downloadFile(String url, String filename) async {
    final status = await Permission.storage.status;

    if(status.isGranted) {
      var httpClient = new HttpClient();
      try{
        var request = await httpClient.getUrl(Uri.parse(url));
        var response = await request.close();
        var bytes = await consolidateHttpClientResponseBytes(response);

        var directory = null;
        if(Platform.isIOS){
          directory = await getApplicationSupportDirectory();
        }else{
          directory = await getExternalStorageDirectory();
        }

        final myImagePath = '${directory?.path}/MyMusics';

        await Directory(myImagePath).create();

        File file = File('$myImagePath/$filename');
        await file.writeAsBytes(bytes);
        print('downloaded file path = ${file.path}');
        return file;
      }catch(error){
        print('downloading error = $error');
        return null;
      }
    }else{
      return null;
    }
  }
}
