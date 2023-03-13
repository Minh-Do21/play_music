import 'package:flutter/material.dart';
import 'barrel_screens.dart';
import 'dashboard_screen/dashboard_screen.dart';

class AppRouter {
  static const String DASHBOARD_SCREEN = 'dashboard_screen';
  static const String LOGIN_SCREEN = 'login_screen';
  static const String BROWSER_SCREEN = 'browser_screen';
  static const String VIDEO_PLAY_SCREEN = 'video_play_screen';
  static const String QR_CODE_SCREEN = 'qr_code_screen';
  static const String SCAN_QR_CODE_SCREEN = 'scan_qr_code_screen';

  //Check First Screen Open
  static Future<Widget> initialFirstScreen() async {
    // final userInfo = await SessionManager.share.getUserInfo();
    // final xRapidAPIKey = await SessionManager.share.getXRapidAPIKey();
    // final xRapidAPIHost = await SessionManager.share.getXRapidAPIHost();

    // AppConfig.instance.userInfo = userInfo;
    // AppConfig.instance.XRapidAPIKey = xRapidAPIKey;
    // AppConfig.instance.XRapidAPIHost = xRapidAPIHost;

    // return (userInfo != null && xRapidAPIKey != null && xRapidAPIHost != null)
    //     ? const DashboardScreen()
    //     : const SplashScreen();

    return const SplashScreen();
  }

  // Generate Router
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case DASHBOARD_SCREEN:
        return MaterialPageRoute(builder: (_) => const DashboardScreen());
      // case LOGIN_SCREEN:
      //   return MaterialPageRoute(builder: (_) => LoginScreen());
      // case BROWSER_SCREEN:
      //   return MaterialPageRoute(
      //       builder: (_) =>
      //           BrowserScreen(args: settings.arguments as BrowserArgument));
      // case VIDEO_PLAY_SCREEN:
      //   return MaterialPageRoute(
      //       builder: (_) =>
      //           VideoPlayScreen(infoVideoModel: settings.arguments as InfoVideoModel,));
      // case QR_CODE_SCREEN:
      //   return MaterialPageRoute(
      //       builder: (_) =>
      //           QrCodeScreen(userInfoModel: settings.arguments as UserInfoModel));
      // case SCAN_QR_CODE_SCREEN:
      //   return MaterialPageRoute(
      //       builder: (_) =>
      //           ScanQrCodeScreen());
      // Default if no Router:
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
