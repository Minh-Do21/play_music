import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:dio_http_cache/dio_http_cache.dart';
import '../../common/app_config.dart';
import '../../common/barrel_common.dart';
import '../../common/config_environment.dart';

class DioProvider {
  static DioCacheManager? _manager;

  static DioCacheManager getCacheManager() {
    _manager ??= DioCacheManager(CacheConfig(
      baseUrl: ConfigEnvironment.baseUrl,
    ));
    return _manager!;
  }

  static Dio instance() {
    final dio = Dio()
      ..options.baseUrl = ConfigEnvironment.baseUrl
      ..options.connectTimeout = 300000
      ..options.receiveTimeout = 300000
      ..interceptors.add(HttpLogInterceptor())
      ..interceptors.add(DioCacheManager(
        CacheConfig(
          baseUrl: ConfigEnvironment.baseUrl,
        ),
      ).interceptor);

    return dio;
  }
}

class HttpLogInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers["Cookie"] = AppConfig.instance.Cookie;
    log('REQUEST: ${options.uri}\n'
        'data=${options.data}\n'
        'method=${options.method}\n'
        'headers=${options.headers}\n'
        'queryParameters=${options.queryParameters}');
    // final token = AppConfig.instance.accessToken;

    final XRapidAPIKey = AppConfig.instance.XRapidAPIKey;
    final XRapidAPIHost = AppConfig.instance.XRapidAPIHost;
    if (XRapidAPIKey != null && XRapidAPIHost != null) {
      // log('Authorization bearer $token');
      // options.headers.putIfAbsent('Authorization', () => 'bearer $token');
      options.headers.putIfAbsent('X-RapidAPI-Key', () => XRapidAPIKey);
      options.headers.putIfAbsent('X-RapidAPI-Host', () => XRapidAPIHost);
    }

    

    return super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    log('RESPONSE: ${response.realUri}\n Body: ${response.data}');
    return super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    log('ERROR ${err.response?.statusCode}\n Error: ${err.response}');
    return super.onError(err, handler);
  }

  // @override
  // Future onResponse(Response response, ResponseInterceptorHandler handler) {
  //   log('onRequest: ${response.realUri}');
  //   // log('Header = ${response.request.headers}');
  //   // log('data = ${response.request.data}');
  //   log('onResponse: $response');
  //   // return super.onResponse(response, handler);
  // }

  // @override
  // void onError(DioError err, ErrorInterceptorHandler handler) {
  //   log('onError: $err\n'
  //       'Response: ${err.response}');
  // }
}
