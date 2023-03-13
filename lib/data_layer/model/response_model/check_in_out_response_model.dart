import 'package:g_json/g_json.dart';

class CheckInOutResponseModel {
  String attendTime;

  CheckInOutResponseModel({
    required this.attendTime, 
  });

  factory CheckInOutResponseModel.fromJson(JSON json) {
    return CheckInOutResponseModel(
      attendTime: json['attendTime'].stringValue,
    );
  }
}
