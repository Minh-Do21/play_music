import 'package:flutter/material.dart';
import '../friend_screen/friend_screen.dart';
import '../home_screen/home_screen.dart';
import '../message_screen/message_screen.dart';
import '../profile_screen/profile_screen.dart';
import 'bloc/dashboard_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../common/barrel_common.dart';
import '../../utils/barrel_utils.dart';

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
            create: (_) => DashboardBloc(),
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
class _DashboardScreenFormState extends State<_DashboardScreenForm>{
  int _currentIndex = 0;
  late List<Widget> _children;

  @override
  // ignore: avoid_void_async
  void initState() {
    super.initState();
    _currentIndex = 0;
    _children = <Widget>[
      HomeScreen(),
      FriendScreen(),
      MessageScreen(),
      ProfileScreen(),
    ];
  }

  @override
  void dispose() {
    super.dispose();
  }

  // Change index dashboard
  void _indexChangeSetState(int toIndex) {
    setState(() {
      _currentIndex = toIndex;
    });
  }


  @override
  Widget build(BuildContext context) {
    return BlocListener<DashboardBloc, DashboardState>(
        listenWhen: (previous, current) =>
            previous.index != current.index,
        listener: (context, state) {
        },
        child: Scaffold(
          extendBody: true,
          body: IndexedStack(
            index: _currentIndex,
            children: _children,
          ),
          // resizeToAvoidBottomPadding: false,
          bottomNavigationBar: BottomAppBar(
            notchMargin: 0,
            color: COLOR_CONST.black,
            child: Container(
              decoration: const BoxDecoration(
                color: COLOR_CONST.black,
                boxShadow: [
                  BoxShadow(
                      color: Colors.white,
                      offset: Offset(0, -2),
                      blurRadius: 1,
                      spreadRadius: -2.8,
                      blurStyle: BlurStyle.solid),
                ],
              ),
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  //Item Home
                  _bottomNavibarItem(
                    icon: SvgPicture.asset(
                      _currentIndex == 0 
                        ? ICON_CONST.ic_home_selected.path
                        : ICON_CONST.ic_home.path,
                      color: _currentIndex == 0
                          ? COLOR_CONST.white
                          : COLOR_CONST.silver,
                      width: 20,
                    ),
                    text: Text(
                      'Home',
                      style: FONT_CONST.semoBold(
                        fontSize: 10,
                        color: _currentIndex == 0
                            ? COLOR_CONST.white
                            : COLOR_CONST.silver,
                      ),
                    ),
                    onTap: () {
                      _indexChangeSetState(0);
                    },
                  ),
                  //Item Friend
                  _bottomNavibarItem(
                    icon: SvgPicture.asset(
                      _currentIndex == 1
                        ? ICON_CONST.ic_friend_selected.path
                        : ICON_CONST.ic_friend.path,
                      color: _currentIndex == 1
                          ? COLOR_CONST.white
                          : COLOR_CONST.silver,
                      width: 20,
                    ),
                    text: Text(
                      'Friend',
                      style: FONT_CONST.semoBold(
                        fontSize: 10,
                        color: _currentIndex == 1
                            ? COLOR_CONST.white
                            : COLOR_CONST.silver,
                      ),
                    ),
                    onTap: () {
                      _indexChangeSetState(1);
                    },
                  ),

                  //Item Message
                  _bottomNavibarItem(
                    icon: SvgPicture.asset(
                      _currentIndex == 2
                        ? ICON_CONST.ic_message_selected.path
                        : ICON_CONST.ic_message.path,
                      color: _currentIndex == 2
                          ? COLOR_CONST.white
                          : COLOR_CONST.silver,
                      width: 20,
                    ),
                    text: Text(
                      'Message',
                      style: FONT_CONST.semoBold(
                        fontSize: 10,
                        color: _currentIndex == 2
                            ? COLOR_CONST.white
                            : COLOR_CONST.silver,
                      ),
                    ),
                    onTap: () {
                      _indexChangeSetState(2);
                    },
                  ),

                  //Item Profile
                  _bottomNavibarItem(
                    icon: SvgPicture.asset(
                      _currentIndex == 3
                        ? ICON_CONST.ic_profile_selected.path
                        : ICON_CONST.ic_profile.path,
                      color: _currentIndex == 3
                          ? COLOR_CONST.white
                          : COLOR_CONST.silver,
                      width: 20,
                      height: 20,
                    ),
                    text: Text(
                      'Profile',
                      style: FONT_CONST.semoBold(
                        fontSize: 10,
                        color: _currentIndex == 3
                            ? COLOR_CONST.white
                            : COLOR_CONST.silver,
                      ),
                    ),
                    onTap: () {
                      _indexChangeSetState(3);
                    },
                  ),
                ],
              ),
            ),
          ),           
        )
      );
  }

  // Widget button navibar
  Widget _bottomNavibarItem({
    required Widget icon,
    required VoidCallback onTap,
    required Text text,
  }) {
    return Center(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          color: Colors.transparent,
          width: SizeConfig.screenWidth / 5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon,
              const VerticalSpacing(of: 6),
              text,
            ],
          ),
        ),
      )
    );
  }
}
