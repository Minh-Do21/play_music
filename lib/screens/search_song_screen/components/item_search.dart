import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:play_music/screens/custom_widgets/show_confirm_message.dart';

import '../../../common/size_config.dart';
import '../../../data_layer/model/info_song_model.dart';
import '../../../utils/barrel_utils.dart';
import '../../custom_widgets/image_video_custom.dart';
import '../../custom_widgets/loading_show_able/loading_show_able.dart';
import '../bloc/search_song_bloc.dart';

class ItemSearch extends StatelessWidget {
  const ItemSearch({
    required this.infoSong,
    Key? key,
  }) : super(key: key);

  final InfoSongModel infoSong;

  Future<void> confirmDownLoad(BuildContext context)async{
    FocusScope.of(context).requestFocus(FocusNode());

    showConfirmMessage(
      context: context,
      title: "Xác nhận",
      conntent: "Tải xuống \"${infoSong.title}\" về thư viện của bạn không?",
      pressAccept: ()async{
        LoadingShowAble.showLoading(clickClose: false);

        BlocProvider.of<SearchSongBloc>(context)
          .add(DownLoadSongEvent(infoSong: infoSong));

      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        confirmDownLoad(context);
      },
      child: Container(
        color: Colors.transparent,
        margin: EdgeInsets.only(top: getProportionateScreenWidth(10)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ImageVideoCustom(
              imagePath: Uri.parse(infoSong.thumbnailM),
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
                      Flexible(
                        child: Text(
                          infoSong.title,
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
                    infoSong.artistsNames,
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
                ICON_CONST.ic_download.path,
                width: getProportionateScreenWidth(18),
                color: COLOR_CONST.crusta,
              ),
            )
          ],
        ),
      ),
    );
  }
}