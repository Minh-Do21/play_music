
import 'package:dio/dio.dart';
import 'package:g_json/g_json.dart';
import '../../data_layer/api/barrel_api.dart';
import '../../data_layer/request_params/user_info_param.dart';

class AuthenRepository {
  APIDataStore apiDataStore = APIDataStore();
  //login 
  // Future<UserInfoResponseModel> getUserInfo(UserInfoParam userInfoParam) async {
  //   try {
  //     final response = await apiDataStore.requestAPI(
  //       ApiURL.getUserInfo,
  //       params: userInfoParam.toJson(),
  //     );

  //      return UserInfoResponseModel.fromJson(JSON(response["data"]));
  //   } on DioError catch (e) {
  //     throw ErrorFromServer(message: e.message);
  //   }
  // }
}
