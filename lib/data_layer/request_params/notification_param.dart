import 'page_param.dart';

class NotificationParams extends PageParams {
  final int? status;
  final int? type;
  NotificationParams({
    int? page,
    int? pageSize = PageParams.DEFAULT_PAGE_SIZE,
    this.type,
    this.status,
  }) : super(page: page, pageSize: pageSize);

  Map<String, dynamic> toJson() {
    final data = super.toJson();
    data['status'] = status;
    data['type'] = type;
    return data;
  }
}
