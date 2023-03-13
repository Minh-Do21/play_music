import 'dart:async' show Future;
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'app_config.dart';

// - Key? for Shared Preferences
class SessionManagerKey {
  static const String USER_INFO = 'USER_INFO';
  static const String X_RAPID_API_KEY = 'X_RAPID_API_KEY';
  static const String X_RAPID_API_HOST = 'X_RAPID_API_HOST';
}

class SessionManager {
  SessionManager._privateConstructor();

  static final SessionManager share = SessionManager._privateConstructor();

  // // Save User Info
  // Future<bool> saveUserInfo({required UserInfoResponseModel userInfoResponseModel}) async {
  //   final myPrefs = await SharedPreferences.getInstance();
  //   final userEncode = jsonEncode(userInfoResponseModel);
  //   return myPrefs.setString(
  //     SessionManagerKey.USER_INFO,
  //     userEncode,
  //   );
  // }

  // Future<UserInfoResponseModel?> getUserInfo() async {
  //   final myPrefs = await SharedPreferences.getInstance();
  //   final userString = myPrefs.getString(SessionManagerKey.USER_INFO);
  //   if (userString != null) {
  //     return UserInfoResponseModel.fromJson(JSON(jsonDecode(userString)));
  //   }
  //   return null;
  // }

  // Save XRapidAPIKey
  Future<bool> saveXRapidAPIKey({required String key}) async {
    AppConfig.instance.XRapidAPIKey = key;
    final myPrefs = await SharedPreferences.getInstance();
    return myPrefs.setString(SessionManagerKey.X_RAPID_API_KEY, key);
  }

  Future<String?> getXRapidAPIKey() async {
    final myPrefs = await SharedPreferences.getInstance();
    return myPrefs.getString(SessionManagerKey.X_RAPID_API_KEY);
  }

   // Save XRapidAPIHost
  Future<bool> saveXRapidAPIHost({required String host}) async {
    AppConfig.instance.XRapidAPIHost = host;
    final myPrefs = await SharedPreferences.getInstance();
    return myPrefs.setString(SessionManagerKey.X_RAPID_API_HOST, host);
  }

  Future<String?> getXRapidAPIHost() async {
    final myPrefs = await SharedPreferences.getInstance();
    return myPrefs.getString(SessionManagerKey.X_RAPID_API_HOST);
  }


  // Remove all data save local
  Future<bool> removeAll() async {
    final myPrefs = await SharedPreferences.getInstance();
    return myPrefs.clear();
  }
}
