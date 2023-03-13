import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import '../screens/app_router.dart';
import '../utils/barrel_utils.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.firstScreen}) : super(key: key);

  final Widget firstScreen;

  @override
  Widget build(BuildContext context) {
    return RefreshConfiguration(
      headerBuilder: () => const ClassicHeader(
        refreshStyle: RefreshStyle.Follow,
        completeDuration: Duration(milliseconds: 200),
      ),
      footerBuilder: () => const ClassicFooter(
        loadStyle: LoadStyle.ShowWhenLoading,
        completeDuration: Duration(milliseconds: 200),
      ),
      headerTriggerDistance: 80,
      springDescription:
          // ignore: prefer_const_constructors
          SpringDescription(stiffness: 170, damping: 16, mass: 1.9),
      maxOverScrollExtent: 100,
      maxUnderScrollExtent: 0,
      enableScrollWhenRefreshCompleted: true,
      enableLoadingWhenFailed: true,
      hideFooterWhenNotFull: false,
      enableBallisticLoad: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: AppRouter.generateRoute,
        builder: BotToastInit(),
        navigatorObservers: [BotToastNavigatorObserver()],
        theme: ThemeData(
          backgroundColor: COLOR_CONST.white,
          brightness: Brightness.light,
        ),
        home: firstScreen,
      ),
    );
  }
}
