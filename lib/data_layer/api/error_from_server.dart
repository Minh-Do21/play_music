import 'package:g_json/g_json.dart';

class ErrorFromServer implements Exception {
  final bool? status;
  final String? errorCode;
  final String? message;

  // Init
  ErrorFromServer({
    this.status,
    this.errorCode,
    this.message,
  });

  // Error from Server
  factory ErrorFromServer.fromJson(Map<String, dynamic> json) {
    try {
      final jsonParser = JSON(json);
      return ErrorFromServer(
        status: false,
        errorCode: jsonParser['err'].stringValue,
        message: jsonParser['msg'].stringValue,
      );
    } catch (e) {
      return ErrorFromServer.unknownError(customMessage: e.toString());
    }
  }

  factory ErrorFromServer.unknownError({String? customMessage}) {
    return ErrorFromServer(
        status: false,
        errorCode: '0',
        message: customMessage ?? 'サーバー エラーが発生しました。');
  }

  factory ErrorFromServer.unAuthorize() {
    return ErrorFromServer(
        status: false,
        errorCode: '1',
        message: 'セッションが無効化されました。もう一度ログインしてください！');
  }
  factory ErrorFromServer.noInternetConnection() {
    return ErrorFromServer(
        status: false,
        errorCode: '2',
        message: 'インターネット接続されていません。ネットワークの接続を確認し、もう一度試してください！');
  }
}
