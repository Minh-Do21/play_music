
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:play_music/common/barrel_common.dart';
import '../../utils/barrel_utils.dart';
import '../custom_widgets/app_icon_button_custom.dart';
import 'bloc/search_song_bloc.dart';

class SearchSongScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SearchSongBloc()..add(InitBlocEvent()),
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
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: SizeConfig.bottomNavigationBarHeight,
        centerTitle: true,
        elevation: 0,
        backgroundColor: COLOR_CONST.white,
        brightness: Brightness.dark,
        automaticallyImplyLeading: false,
        
        actions: [
          Padding(
            padding: EdgeInsets.only(
              left: appDefaultPadding,
              right: getProportionateScreenWidth(10),    
            ),
            child: AppIconButtonCustom(
              icon: SvgPicture.asset(
                ICON_CONST.ic_back.path,
                color: COLOR_CONST.black,
              ),
              onPressed: () {
                  Navigator.of(context).pop();  
              },
            ),
          ),
          Expanded(
            child: 
            Container(
              margin: EdgeInsets.only(
                right: appDefaultPadding
              ),
         
              child: TextField(
                // controller: textController,
                autofocus: false,
                style: FONT_CONST.regular(
                  color: COLOR_CONST.black,
                  fontSize: 14
                ),
                keyboardType: TextInputType.text,
                onChanged: (value){},
                scrollPadding: EdgeInsets.all(0),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: COLOR_CONST.silver.withOpacity(0.6),
                  hintText: 'Tìm kiếm bài hát, nghệ sĩ ...',
                  hintStyle: FONT_CONST.regular(
                    color: COLOR_CONST.black,
                    fontSize: 14
                  ),
                  // contentPadding: EdgeInsets.only(
                  //   left: appDefaultPadding,
                  //   right: appDefaultPadding
                  // ),
                  
                  contentPadding:EdgeInsets.fromLTRB(0,0,0,0),
                  enabledBorder:  OutlineInputBorder(
                    borderSide: const BorderSide(color: COLOR_CONST.white),
                    borderRadius: BorderRadius.circular(30),
                    gapPadding: 0
                  ),
                 
                  focusedBorder:  OutlineInputBorder(
                    borderSide: BorderSide(color: COLOR_CONST.white),
                    borderRadius: BorderRadius.circular(30),
                     gapPadding: 0
                  ),
                  
                ),
              ),
            ),
          )
        ],
      ),
      body: Center(
        child: Text("FRIEND"),
      ),
    );
  }
}
