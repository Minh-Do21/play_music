import 'package:g_json/g_json.dart';

class BaseListResponse<T> {
  int totalRecords;
  int totalPage;
  int next;
  int previous;
  List<T>? results;

  BaseListResponse(
      {required this.totalRecords,
      required this.totalPage,
      required this.next,
      required this.previous,
      this.results});

  /// param map: map key "data" response from api.
  /// param fromJsonModel:  object conver from json.
  ///
  factory BaseListResponse.fromJson(JSON map, Function fromJsonModel) {
    return BaseListResponse(
      totalRecords: map['total_records'].integerValue,
      totalPage: map['total_page'].integerValue,
      next: map['next'].integerValue,
      previous: map['previous'].integerValue,
      results: List<T>.from(map['results']
          .listValue
          .map((itemsJson) => fromJsonModel(itemsJson))
          .toList()),
    );
  }

  @override
  String toString() {
    return super.toString();
  }
}
