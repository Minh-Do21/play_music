import 'dart:math';

import 'package:audio_service/audio_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_audio/just_audio.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../../../common/barrel_common.dart';
import '../../../utils/app_const/barrel_const.dart';
import '../../app_router.dart';
import '../../custom_widgets/barrel_custom_widgets.dart';
import '../../custom_widgets/image_video_custom.dart';
import '../bloc/dashboard_bloc.dart';

class ListMyMusics extends StatefulWidget {
  const ListMyMusics({
    required this.panelController,
    required this.player,
    Key? key,
  }) : super(key: key);

  final PanelController panelController;
  final AudioPlayer player;

  @override
  State<ListMyMusics> createState() => _ListMyMusicsState();
}

class _ListMyMusicsState extends State<ListMyMusics> {
  final ScrollController _scrollController = ScrollController();
  double opacityTextAppbar = 0;
  double opacityTextHeader = 1;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    final data = _scrollController.offset;
    if (data > 30 && opacityTextAppbar == 0) {
      print("Cuộn: ${data}");

      opacityTextAppbar = 1;
      opacityTextHeader = 0;
      BlocProvider.of<DashboardBloc>(context).add(ChangeAnimationTextEvent());
    } else if (data < 30 && opacityTextAppbar == 1) {
      print("Cuộn: ${data}");

      opacityTextAppbar = 0;
      opacityTextHeader = 1;
      BlocProvider.of<DashboardBloc>(context).add(ChangeAnimationTextEvent());
    }
  }

  @override
  void dispose() async {
    super.dispose();
    _scrollController.dispose();
  }

  Future<void> randomMusic(DashboardState state) async {
    var random = Random();
    for (var i = state.listMusic.length - 1; i > 0;) {
      // Pick a pseudorandom number according to the list length
      var index = random.nextInt(i + 1);
      widget.panelController.open();
      widget.player.seek(const Duration(microseconds: 0), index: index);
      widget.player.play();
      break;
    }
  }

  Future<void> clickItemMusic(int index) async {
    widget.panelController.open();
    widget.player.seek(const Duration(microseconds: 0), index: index);
    widget.player.play();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardBloc, DashboardState>(
      buildWhen: (previous, current) => previous.listMusic != current.listMusic,
      builder: (context, state) {
        return NestedScrollView(
          controller: _scrollController,
          physics: const NeverScrollableScrollPhysics(),
          headerSliverBuilder: (context, value) {
            return [
              BlocBuilder<DashboardBloc, DashboardState>(
                buildWhen: (previous, current) =>
                    previous.listMusic != current.listMusic ||
                    previous.isAnimationText != current.isAnimationText,
                builder: (context, state) {
                  return SliverAppBar(
                    centerTitle: false,
                    automaticallyImplyLeading: false,
                    toolbarHeight: getProportionateScreenWidth(50),
                    backgroundColor: COLOR_CONST.white,
                    elevation: 0,
                    floating: true,
                    pinned: true,
                    flexibleSpace: AppBar(
                      title: AnimatedOpacity(
                        opacity: opacityTextAppbar,
                        duration: const Duration(milliseconds: 400),
                        child: Text("Bài hát của tôi",
                            style: FONT_CONST.bold(
                                color: COLOR_CONST.black, fontSize: 18)),
                      ),
                      centerTitle: true,
                      elevation: 0,
                      backgroundColor: COLOR_CONST.white,
                      brightness: Brightness.dark,
                      automaticallyImplyLeading: false,
                      actions: [
                        GestureDetector(
                          // ignore: unnecessary_lambdas
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              AppRouter.SEARCH_SONG_SCREEN,
                            );  
                          },
                          child: Padding(
                            padding: EdgeInsets.only(right: appDefaultPadding),
                            child: SvgPicture.asset(
                              ICON_CONST.ic_search.path,
                              color: COLOR_CONST.black,
                              width: getProportionateScreenWidth(22),
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
              BlocBuilder<DashboardBloc, DashboardState>(
                buildWhen: (previous, current) => 
                  previous.listMusic != current.listMusic ||
                  previous.isAnimationText != current.isAnimationText,
                builder: (context, state) {
                  return SliverToBoxAdapter(
                      child: Container(
                    color: COLOR_CONST.white,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              top: getProportionateScreenWidth(10)),
                          child: AnimatedOpacity(
                            opacity: opacityTextHeader,
                            duration: const Duration(milliseconds: 100),
                            child: Text(
                              "Bài hát của tôi",
                              style: FONT_CONST.bold(
                                  color: COLOR_CONST.black, fontSize: 23),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              top: getProportionateScreenWidth(10)),
                          child: AnimatedOpacity(
                            opacity: opacityTextHeader,
                            duration: const Duration(milliseconds: 1000),
                            child: Text(
                              "${state.listMusic.length} bài hát · Đã lưu vào thư viện",
                              style: FONT_CONST.bold(
                                  color: COLOR_CONST.doveGray,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              top: getProportionateScreenWidth(30)),
                          width: getProportionateScreenWidth(230),
                          height: getProportionateScreenHeight(50),
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  COLOR_CONST.crusta,
                                  COLOR_CONST.crusta,
                                  Color.fromARGB(253, 249, 155, 68),
                                  Color.fromARGB(251, 240, 172, 85)
                                ]),
                            borderRadius: BorderRadius.circular(
                                getProportionateScreenWidth(40)),
                          ),
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                                borderRadius: BorderRadius.circular(
                                    getProportionateScreenWidth(40)),
                                highlightColor:
                                    COLOR_CONST.black.withOpacity(0.2),
                                splashColor: Colors.transparent,
                                onTap: () {
                                  randomMusic(state);
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      ICON_CONST.ic_play.path,
                                      width: getProportionateScreenHeight(15),
                                      color: COLOR_CONST.white,
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      "Phát ngẫu nhiên",
                                      style: FONT_CONST.bold(
                                        color: COLOR_CONST.white,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    )
                                  ],
                                )),
                          ),
                        ),
                      ],
                    ),
                  ));
                },
              ),
            ];
          },
          body: Container(
            color: COLOR_CONST.white,
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: state.listMusic.length,
              padding: EdgeInsets.only(
                top: getProportionateScreenWidth(20),
                bottom: getProportionateScreenWidth(80),
              ),
              itemBuilder: (context, index) {
                final metadata =
                    state.listMusic[index].sequence.first.tag as MediaItem;
                return GestureDetector(
                  onTap: () {
                    clickItemMusic(index);
                  },
                  child: Container(
                    color: Colors.transparent,
                    margin:
                        EdgeInsets.only(top: getProportionateScreenWidth(8)),
                    padding:
                        EdgeInsets.symmetric(horizontal: appDefaultPadding),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ImageVideoCustom(
                          imagePath: metadata.artUri,
                          sizeAvatar: getProportionateScreenWidth(60),
                          sizeRadius: getProportionateScreenWidth(10),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Flexible(
                          flex: 1,
                          fit: FlexFit.tight,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  StreamBuilder<SequenceState?>(
                                      stream: widget.player.sequenceStateStream,
                                      builder: (context, snapshot) {
                                        if (widget.player.currentIndex ==
                                            index) {
                                          return Container(
                                            margin:
                                                const EdgeInsets.only(right: 5),
                                            child: Image.asset(
                                              widget.player.playing
                                                  ? IMAGE_CONST.playing.path
                                                  : IMAGE_CONST.stop_play.path,
                                              height:
                                                  getProportionateScreenWidth(
                                                      25),
                                            ),
                                          );
                                        } else {
                                          return Container();
                                        }
                                      }),
                                  Flexible(
                                    child: Text(
                                      metadata.title,
                                      style: FONT_CONST.bold(
                                          color: COLOR_CONST.black,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 3,
                              ),
                              Text(
                                metadata.artist ?? "",
                                style: FONT_CONST.bold(
                                    color: COLOR_CONST.doveGray,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: getProportionateScreenWidth(20),
                        ),
                        GestureDetector(
                          child: SvgPicture.asset(
                            ICON_CONST.ic_more.path,
                            height: getProportionateScreenWidth(4),
                            color: COLOR_CONST.dustyGray,
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
