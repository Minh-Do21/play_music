import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:dio/dio.dart';
import 'api_url.dart';
import 'dio_provider.dart';
import 'error_from_server.dart';

class APIDataStore {
  Dio dio = DioProvider.instance();

  APIDataStore();

  // Public Request API
  Future<dynamic> requestAPI(
    ApiURL apiURL, {
    Map<String, dynamic>? params,
    body,
    FormData? formData,
    String? customURL,
    bool tryAgain = true,
    Options? options,
  }) async {
    dynamic bodyRequest = '{}';
    if (body != null) {
      bodyRequest = jsonEncode(body);
    }
    if (formData != null) {
      bodyRequest = formData;
    }
    try {
      Response? response;
      switch (apiURL.methods) {
        case HTTPRequestMethods.get:
          response = await dio.get(
            customURL ?? apiURL.path,
            queryParameters: params,
            options: options,
          );
          break;
        case HTTPRequestMethods.post:
          Options? _options;
          if (bodyRequest == null || bodyRequest is String) {
            _options = Options(
              headers: {Headers.contentTypeHeader: ContentType.json.value},
            );
          }
          response = await dio.post(customURL ?? apiURL.path,
              queryParameters: params, data: bodyRequest, options: _options);
          break;
        case HTTPRequestMethods.put:
          response = await dio.put(customURL ?? apiURL.path,
              queryParameters: params, data: bodyRequest);
          break;
        case HTTPRequestMethods.patch:
          response = await dio.patch(customURL ?? apiURL.path,
              queryParameters: params, data: bodyRequest);
          break;
        case HTTPRequestMethods.delete:
          response = await dio.delete(customURL ?? apiURL.path,
              queryParameters: params, data: bodyRequest);
          break;
        default:
          log('Không có methods được tạo');
          break;
      }

      if (response?.data['status'] == false) {
        // await DioProvider.getCacheManager().deleteByPrimaryKeyAndSubKey(
        //     customURL ?? apiURL.path,
        //     requestMethod: 'GET');
        // if (response?.data['message_code'] == 11 && tryAgain) {
          
        //   final authenRepository = AuthenRepository();
        //   if (await authenRepository.refreshToken()) {
        //     return await requestAPI(apiURL,
        //         params: params,
        //         body: body,
        //         formData: formData,
        //         tryAgain: false);
        //   }
        // }
        print("Lỗi token ở đây !");
        if(response?.data != null){
          if(response!.data['error_code'].toString().contains("ERR_TOKEN_INVALID") ||
            response.data['error_code'].toString().contains("ERR_TOKEN_NOT_FOUND")){

            print("Lỗi token - Thực hiện đăng xuất !!");
            // if(AppConfig.instance.isFirstLogout == false){
            //   AppConfig.instance.isFirstLogout = true;
            //   FlutterNotificationCenter.post(
            //     channel: NOTIFICATION_CENTER_CHANNEL.LOG_OUT.channel,
            //   );
            // }
            
          }else if(response.data['error_code'].toString().contains("ERR_TOKEN_EXPIRED")){
            print("Lỗi token - Thực hiện reset token");
            //  await DioProvider.getCacheManager().deleteByPrimaryKeyAndSubKey(
            //       customURL ?? apiURL.path,
            //       requestMethod: 'GET');
              // if (tryAgain) {
              //   final authenRepository = AuthenRepository();
              //   if (await authenRepository.refreshToken()) {
              //     return await requestAPI(apiURL,
              //         params: params,
              //         body: body,
              //         formData: formData,
              //         tryAgain: false);
              //   }else{
              //     AppConfig.instance.isFirstLogout = true;
              //     FlutterNotificationCenter.post(
              //       channel: NOTIFICATION_CENTER_CHANNEL.LOG_OUT.channel,
              //     );
              //   }
              // }
          }

        }
        
        throw ErrorFromServer.fromJson(response?.data);
      }
      // return response?.data['data'];
      return response?.data;
    } on SocketException catch (_) {
      throw ErrorFromServer.noInternetConnection();
    } on DioError catch (e) {

      // print("Lỗi !!!!!! ${e.response?.statusCode}");
      if (e.response != null &&
          e.response?.data != null &&
          e.response?.data?.toString().isNotEmpty != null) {

        if(e.response?.statusCode == 500){
          throw ErrorFromServer.unknownError(customMessage: e.message);
        }
        throw ErrorFromServer.fromJson(e.response?.data);
      }else if(e.type == DioErrorType.other){
        throw ErrorFromServer.noInternetConnection();
      } else {
        throw ErrorFromServer.unknownError(customMessage: e.message);
      }
    }
  }
}
