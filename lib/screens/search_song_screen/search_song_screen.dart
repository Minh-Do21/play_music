import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:play_music/common/barrel_common.dart';
import 'package:rxdart/rxdart.dart';
import 'package:shimmer/shimmer.dart';
import '../../data_layer/model/info_song_model.dart';
import '../../utils/barrel_utils.dart';
import '../custom_widgets/app_icon_button_custom.dart';
import '../custom_widgets/barrel_custom_widgets.dart';
import '../custom_widgets/image_video_custom.dart';
import '../custom_widgets/show_confirm_message.dart';
import 'bloc/search_song_bloc.dart';
import 'components/item_search.dart';
import 'components/loading_search.dart';

class SearchSongScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SearchSongBloc(),
      child: const _SearchSongScreenForm(),
    );
  }
}

class _SearchSongScreenForm extends StatefulWidget {
  const _SearchSongScreenForm({Key? key}) : super(key: key);

  @override
  _FriendScreenState createState() => _FriendScreenState();
}

class _FriendScreenState extends State<_SearchSongScreenForm> {
  final textSearchChange = BehaviorSubject<String>();
  final textController = TextEditingController();

  @override
  void initState() {
    super.initState();
    textSearchChange
        .debounceTime(const Duration(milliseconds: 600))
        .distinct()
        .listen((searchText) {
      final textSearch = searchText.trim();
      BlocProvider.of<SearchSongBloc>(context)
          .add(SearchSongsEvent(textSearch: textSearch));
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    textController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchSongBloc, SearchSongState>(
      buildWhen: (previous, current) => 
        previous.listSongDownLoad != current.listSongDownLoad,
      builder: (context, state) {
        return WillPopScope(
          onWillPop: () async {
            Navigator.pop(context, state.listSongDownLoad);
            return Future(() => false);
          },
          child: Scaffold(
              backgroundColor: COLOR_CONST.white,
              appBar: AppBar(
                toolbarHeight: SizeConfig.bottomNavigationBarHeight,
                centerTitle: true,
                elevation: 0,
                titleSpacing: 0,
                backgroundColor: COLOR_CONST.white,
                automaticallyImplyLeading: false,
                leading: Padding(
                  padding: EdgeInsets.only(
                    left: appDefaultPadding,
                  ),
                  child: AppIconButtonCustom(
                    icon: SvgPicture.asset(
                      ICON_CONST.ic_back_simple.path,
                      color: COLOR_CONST.black,
                      height: getProportionateScreenWidth(25),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop(state.listSongDownLoad);
                    },
                  ),
                ),
                title: Container(
                  padding: EdgeInsets.only(right: appDefaultPadding),
                  child: TextField(
                    controller: textController,
                    style: FONT_CONST.regular(
                      color: COLOR_CONST.black,
                      fontSize: 14,
                    ),
                    onChanged: (value) {
                      textSearchChange.add(value);
                    },
                    decoration: InputDecoration(
                      hintText: "Tìm kiếm bài hát...",
                      filled: true,
                      fillColor: COLOR_CONST.silverChalice.withOpacity(0.4),
                      isDense: true,
                      hintStyle: FONT_CONST.regular(
                        color: COLOR_CONST.black,
                        fontSize: 14,
                      ),
                      prefixIconConstraints: BoxConstraints.expand(
                        width: getProportionateScreenWidth(40),
                        height: getProportionateScreenWidth(20),
                      ),
                      prefixIcon: Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(
                            right: getProportionateScreenWidth(5)),
                        child: SvgPicture.asset(
                          ICON_CONST.ic_search.path,
                          width: 15,
                          color: COLOR_CONST.black,
                        ),
                      ),
                      contentPadding: EdgeInsets.only(
                        left: getProportionateScreenWidth(20),
                        right: getProportionateScreenWidth(0),
                        top: getProportionateScreenWidth(15),
                        bottom: getProportionateScreenWidth(12),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: COLOR_CONST.white),
                          borderRadius: BorderRadius.circular(30),
                          gapPadding: 0),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: COLOR_CONST.white),
                          borderRadius: BorderRadius.circular(30),
                          gapPadding: 0),
                    ),
                  ),
                ),
              ),
              body: Container(
                margin: EdgeInsets.only(
                    left: appDefaultPadding,
                    right: appDefaultPadding,
                    top: appDefaultPadding),
                child: BlocConsumer<SearchSongBloc, SearchSongState>(
                  buildWhen: (previous, current) =>
                      previous.songTop != current.songTop ||
                      previous.statusSearch != current.statusSearch ||
                      previous.statusDownLoad != current.statusDownLoad ||
                      previous.songsSearch != current.songsSearch,
                  listener: (context, state) {
                    if (!state.statusDownLoad.isInitial && !state.statusDownLoad.isInProgress) {
                      LoadingShowAble.forceHide();
                    }
                    print(
                        "VẼ LẠIIIIIIII ${state.statusDownLoad} - ${state.contentNoti} ");

                    if (state.contentNoti.length > 1) {
                      showConfirmMessage(
                          context: context,
                          title: "Thông báo",
                          isHiddenAccept: true,
                          conntent: state.contentNoti,
                          pressAccept: () async {});
                    }
                  },
                  builder: (context, state) {
                    if (state.statusSearch.isInitial) {
                      return Center(
                        child: Text("Tìm kiếm bài hát yêu thích của bạn",
                            style: FONT_CONST.regular(
                                color: COLOR_CONST.doveGray, fontSize: 14)),
                      );
                    } else if (state.statusSearch.isInProgress) {
                      return const LoadingSearch();
                    } else if (state.statusSearch.isSuccess) {
                      return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Thịnh hành",
                                style: FONT_CONST.bold(
                                    color: COLOR_CONST.black, fontSize: 18)),
                            SizedBox(
                              height: getProportionateScreenWidth(10),
                            ),
                            if (state.songTop != null &&
                                state.songTop!.encodeId.isNotEmpty) ...[
                              ItemSearch(
                                infoSong: state.songTop!,
                              ),
                            ] else ...[
                              Center(
                                child: Text(
                                    "Không tìm thấy bài hát nào trong thịnh hành!",
                                    style: FONT_CONST.semoBold(
                                        color: COLOR_CONST.doveGray,
                                        fontSize: 14)),
                              )
                            ],
                            SizedBox(
                              height: getProportionateScreenWidth(30),
                            ),
                            Text("Kết quả",
                                style: FONT_CONST.bold(
                                    color: COLOR_CONST.black, fontSize: 18)),
                            SizedBox(
                              height: getProportionateScreenWidth(10),
                            ),
                            if (state.songsSearch.isNotEmpty) ...[
                              Expanded(
                                child: ListView.builder(
                                  itemCount: state.songsSearch.length,
                                  itemBuilder: (context, index) {
                                    if (state.songsSearch[index].encodeId
                                        .isNotEmpty) {
                                      return ItemSearch(
                                        infoSong: state.songsSearch[index],
                                      );
                                    } else {
                                      return Container();
                                    }
                                  },
                                ),
                              )
                            ] else ...[
                              Center(
                                child: Text("Không tìm thấy bài hát nào!",
                                    style: FONT_CONST.semoBold(
                                        color: COLOR_CONST.doveGray,
                                        fontSize: 14)),
                              )
                            ],
                          ]);
                    } else {
                      return Center(
                        child: Text("Đã có lỗi xảy ra, vui lòng thử lại...",
                            style: FONT_CONST.bold(
                                color: COLOR_CONST.black, fontSize: 18)),
                      );
                    }
                  },
                ),
              )),
        );
      },
    );
  }
}
