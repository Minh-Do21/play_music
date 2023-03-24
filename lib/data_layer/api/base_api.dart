import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import '../../common/app_config.dart';
import '../../domain_layer/repository/dashboard_repository.dart';
import 'api_url.dart';
import 'dio_provider.dart';
import 'error_from_server.dart';
import 'package:cookie_jar/cookie_jar.dart';

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

      if(response?.data['err'] == -201){
        final cookie  = response?.headers.map['set-cookie'];
        final cookieStrings = cookie?.first.split(";");

        AppConfig.instance.Cookie = cookieStrings?.first;
        print("cookieString ${cookieStrings?.first}");
        print("ABCCC ${response?.data}");
        throw ErrorFromServer.fromJson(response?.data);
      }else{
        return response?.data;
      }
      
    } on SocketException catch (_) {
      throw ErrorFromServer.noInternetConnection();
    } on DioError catch (e) {
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
