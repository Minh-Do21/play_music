import 'package:dio/dio.dart';
import 'package:g_json/g_json.dart';
import '../../data_layer/api/barrel_api.dart';
import '../../data_layer/model/info_song_model.dart';
import '../../data_layer/model/response_model/search_song_respone_model.dart';
import '../../data_layer/request_params/search_song_param.dart';

class DashboardRepository {
  APIDataStore apiDataStore = APIDataStore();
  //get home banners

  Future<List<InfoSongModel>> searchSong(SearchSongParam searchSongParam) async {
    try {

      final response = await apiDataStore.requestAPI(
        ApiURL.searchSong,
        params: searchSongParam.toJson(),
      );

      return SearchSongResponeModel.fromJson(JSON(response['data'])).songs;
      
    } on DioError catch (e) {
      print("AAAAAAAAAAAAAA ${e}");
      throw ErrorFromServer(message: e.message);
    }
  }

  Future<SearchSongResponeModel> searchSongsAndSongTop(SearchSongParam searchSongParam) async {
    try {

      final response = await apiDataStore.requestAPI(
        ApiURL.searchSong,
        params: searchSongParam.toJson(),
      );

      return SearchSongResponeModel.fromJson(JSON(response['data']));
      
    } on DioError catch (e) {
      print("AAAAAAAAAAAAAA ${e}");
      throw ErrorFromServer(message: e.message);
    }
  }
}
