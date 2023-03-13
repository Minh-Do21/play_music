class CheckInOutParam {
  final int workSiteId;
  final double lat;
  final double long;

  CheckInOutParam({
    required this.workSiteId,
    required this.lat,
    required this.long,
  });

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['work_site_id'] = workSiteId;
    data['lat'] = lat;
    data['long'] = long;
    return data;
  }
}
