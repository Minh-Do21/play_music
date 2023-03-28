import 'dart:async' show Future;
import 'dart:convert';

import 'package:g_json/g_json.dart';
import 'package:play_music/data_layer/model/info_song_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../data_layer/model/response_model/search_song_respone_model.dart';
import 'app_config.dart';

// - Key? for Shared Preferences
class SessionManagerKey {
  static const String LIST_SONG = 'LIST_SONG';
  static const String X_RAPID_API_KEY = 'X_RAPID_API_KEY';
  static const String X_RAPID_API_HOST = 'X_RAPID_API_HOST';
}

class SessionManager {
  SessionManager._privateConstructor();

  static final SessionManager share = SessionManager._privateConstructor();

  // Save songs
  Future<bool> saveListSong({required SearchSongResponeModel searchSongResponeModel}) async {
    final myPrefs = await SharedPreferences.getInstance();
    final userEncode = jsonEncode(searchSongResponeModel);
    return myPrefs.setString(
      SessionManagerKey.LIST_SONG,
      userEncode,
    );
  }

  Future<SearchSongResponeModel?> getListSong() async {
    final myPrefs = await SharedPreferences.getInstance();
    final songsString = myPrefs.getString(SessionManagerKey.LIST_SONG);
    if (songsString != null) {
      return SearchSongResponeModel.fromJson(JSON(jsonDecode(songsString)));
    }
    return null;
  }

  // remove songs
  Future<bool> removeListSong() async {
    final myPrefs = await SharedPreferences.getInstance();
    return myPrefs.remove(SessionManagerKey.LIST_SONG);
  }

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
