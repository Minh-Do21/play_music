import 'package:audio_service/audio_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_audio/just_audio.dart';
import 'package:play_music/screens/dashboard_screen/components/seek_bar.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../../../common/size_config.dart';
import '../../../utils/app_const/barrel_const.dart';
import '../../custom_widgets/barrel_custom_widgets.dart';
import '../../custom_widgets/image_video_custom.dart';
import '../bloc/dashboard_bloc.dart';
import 'position_data.dart';

class PanelControlMusic extends StatelessWidget {
  const PanelControlMusic({
    required this.player,
    required this.panelController,
    required this.animationController,
    required this.positionDataStream,
    required this.changeStatusMusic,
    required this.nextMusic,
    required this.pretMusic,
    required this.colors,
    Key? key,
  }) : super(key: key);

  final AudioPlayer player;
  final PanelController panelController;
  final AnimationController animationController;
  final Stream<PositionData> positionDataStream;
  final Function() changeStatusMusic;
  final Function() nextMusic;
  final Function() pretMusic;
  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardBloc, DashboardState>(
      builder: (context, state) {
        return StreamBuilder<SequenceState?>(
            stream: player.sequenceStateStream,
            builder: (context, snapshot) {
              final statePlayer = snapshot.data;
              if (statePlayer?.sequence.isEmpty ?? true) {
                return const SizedBox();
              }
              final metadata = statePlayer?.currentSource!.tag as MediaItem;
              return Container(
                padding: EdgeInsets.only(top: 20),
                height: SizeConfig.screenHeight,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: colors)),
                child: Scaffold(
                  backgroundColor: Colors.transparent,
                  appBar: AppBarDefaultBack(
                    isCallBack: true,
                    backgroundColor: Colors.transparent,
                    callback: () {
                      panelController.close();
                    },
                    iconBack: SvgPicture.asset(
                      ICON_CONST.ic_down.path,
                      color: COLOR_CONST.white,
                      width: getProportionateScreenWidth(22),
                    ),

                    actions: [
                      GestureDetector(
                        // ignore: unnecessary_lambdas
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.only(right: appDefaultPadding),
                          child: SvgPicture.asset(
                            ICON_CONST.ic_more.path,
                            color: COLOR_CONST.white,
                            width: getProportionateScreenWidth(22),
                          ),
                        ),
                      )
                    ],
                    // backgroundColor: COLOR_CONST.white,
                    titleStyle: FONT_CONST.bold(
                      color: COLOR_CONST.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                    title: "Phát từ bài hát của tôi",
                  ),
                  body: Center(
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              top: getProportionateScreenWidth(40)),
                          child: AnimatedBuilder(
                            animation: animationController,
                            builder: (context, child) {
                              return Transform.rotate(
                                angle: animationController.value * 6.3,
                                child: ImageVideoCustom(
                                  imagePath: metadata.artUri,
                                  sizeAvatar: SizeConfig.screenWidth * 0.9,
                                  sizeRadius: SizeConfig.screenWidth * 0.9,
                                ),
                              );
                            },
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            padding: EdgeInsets.only(
                              left: getProportionateScreenWidth(30),
                              right: getProportionateScreenWidth(30),
                              top: getProportionateScreenWidth(40),
                            ),
                            child: Column(
                              children: [
                                Text(
                                  metadata.title,
                                  style: FONT_CONST.bold(
                                      color: COLOR_CONST.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      top: getProportionateScreenWidth(7)),
                                  child: Text(
                                    metadata.artist ?? "",
                                    style: FONT_CONST.bold(
                                        color: COLOR_CONST.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      top: getProportionateScreenWidth(10)),
                                  child: StreamBuilder<PositionData>(
                                    stream: positionDataStream,
                                    builder: (context, snapshot) {
                                      final positionData = snapshot.data;
                                      return SeekBar(
                                        duration: positionData?.duration ??
                                            Duration.zero,
                                        position: positionData?.position ??
                                            Duration.zero,
                                        bufferedPosition:
                                            positionData?.bufferedPosition ??
                                                Duration.zero,
                                        onChangeEnd: player.seek,
                                      );
                                    },
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal:
                                          getProportionateScreenWidth(50)),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CupertinoButton(
                                        // color: COLOR_CONST.black,
                                        minSize: 0,
                                        padding: EdgeInsets.all(
                                          getProportionateScreenWidth(15),
                                        ),
                                        onPressed: () {
                                          pretMusic();
                                        },
                                        child: SvgPicture.asset(
                                          ICON_CONST.ic_pre.path,
                                          width:
                                              getProportionateScreenWidth(22),
                                          // ignore: deprecated_member_use
                                          color: COLOR_CONST.white,
                                        ),
                                      ),
                                      CupertinoButton(
                                          // color: COLOR_CONST.black,
                                          minSize: 0,
                                          padding: EdgeInsets.all(
                                            getProportionateScreenWidth(15),
                                          ),
                                          onPressed: () {
                                            changeStatusMusic();
                                          },
                                          child: Container(
                                            width:
                                                getProportionateScreenWidth(70),
                                            height:
                                                getProportionateScreenWidth(70),
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(
                                                        getProportionateScreenWidth(
                                                            70))),
                                                border: Border.all(
                                                    color: COLOR_CONST.white,
                                                    width: 1.5)),
                                            child: Center(
                                              child: SvgPicture.asset(
                                                state.isPlaying
                                                    ? ICON_CONST.ic_pause.path
                                                    : ICON_CONST.ic_play.path,
                                                width:
                                                    getProportionateScreenWidth(
                                                        22),
                                                // ignore: deprecated_member_use
                                                color: COLOR_CONST.white,
                                              ),
                                            ),
                                          )),
                                      CupertinoButton(
                                        // color: COLOR_CONST.black,
                                        minSize: 0,
                                        padding: EdgeInsets.all(
                                          getProportionateScreenWidth(15),
                                        ),
                                        onPressed: () {
                                          nextMusic();
                                        },
                                        child: SvgPicture.asset(
                                          ICON_CONST.ic_next.path,
                                          width:
                                              getProportionateScreenWidth(22),
                                          // ignore: deprecated_member_use
                                          color: COLOR_CONST.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            });
      },
    );
  }
}