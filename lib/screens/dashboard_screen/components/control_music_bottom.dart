import 'package:audio_service/audio_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_audio/just_audio.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

import '../../../common/size_config.dart';
import '../../../utils/app_const/barrel_const.dart';
import '../../custom_widgets/image_video_custom.dart';
import '../bloc/dashboard_bloc.dart';
import 'position_data.dart';
import 'seek_bar_only_show.dart';

class ControlMusicBottom extends StatelessWidget {
  const ControlMusicBottom({
    required this.player,
    required this.panelController,
    required this.animationController,
    required this.positionDataStream,
    required this.changeStatusMusic,
    required this.nextMusic,
    Key? key,
  }) : super(key: key);

  final AudioPlayer player;
  final PanelController panelController;
  final AnimationController animationController;
  final Stream<PositionData> positionDataStream;
  final Function() changeStatusMusic;
  final Function() nextMusic;

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

              return GestureDetector(
                onTap: () {
                  panelController.open();
                },
                child: Container(
                  decoration: const BoxDecoration(
                    color: COLOR_CONST.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.white,
                          offset: Offset(0, -2),
                          blurRadius: 1,
                          spreadRadius: -2.8,
                          blurStyle: BlurStyle.solid),
                    ],
                  ),
                  height: getProportionateScreenWidth(70) +
                      SizeConfig.paddingBottom,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        color: COLOR_CONST.silverChalice.withOpacity(0.3),
                        height: getProportionateScreenWidth(2),
                        child: StreamBuilder<PositionData>(
                          stream: positionDataStream,
                          builder: (context, snapshot) {
                            final positionData = snapshot.data;
                            return SeekBarOnlyShow(
                              duration: positionData?.duration ?? Duration.zero,
                              position: positionData?.position ?? Duration.zero,
                            );
                          },
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(
                              top: getProportionateScreenWidth(8)),
                          padding: EdgeInsets.symmetric(
                              horizontal: appDefaultPadding),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              AnimatedBuilder(
                                animation: animationController,
                                builder: (context, child) {
                                  return Transform.rotate(
                                    angle: animationController.value * 6.3,
                                    child: ImageVideoCustom(
                                      imagePath: metadata.artUri,
                                      sizeAvatar:
                                          getProportionateScreenWidth(55),
                                    ),
                                  );
                                },
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
                                    Text(
                                      "${metadata.title}",
                                      style: FONT_CONST.bold(
                                          color: COLOR_CONST.black,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    const SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      "${metadata.artist}",
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
                              CupertinoButton(
                                // color: COLOR_CONST.black,
                                minSize: 0,
                                padding: EdgeInsets.only(
                                  top: getProportionateScreenWidth(15),
                                  bottom: getProportionateScreenWidth(15),
                                  left: getProportionateScreenWidth(15),
                                ),
                                onPressed: () {
                                  changeStatusMusic();
                                },
                                child: SvgPicture.asset(
                                  state.isPlaying
                                      ? ICON_CONST.ic_pause.path
                                      : ICON_CONST.ic_play.path,
                                  width: getProportionateScreenWidth(17),
                                ),
                              ),
                              SizedBox(
                                width: getProportionateScreenWidth(20),
                              ),
                              CupertinoButton(
                                // color: COLOR_CONST.black,
                                minSize: 0,
                                padding: EdgeInsets.only(
                                  top: getProportionateScreenWidth(15),
                                  bottom: getProportionateScreenWidth(15),
                                  right: getProportionateScreenWidth(15),
                                ),
                                onPressed: () {
                                  nextMusic();
                                },
                                child: SvgPicture.asset(
                                  ICON_CONST.ic_next.path,
                                  width: getProportionateScreenWidth(17),
                                  // ignore: deprecated_member_use
                                ),
                              ),
                            ],
                          )),
                    ],
                  ),
                ),
              );
            });
      },
    );
  }
}