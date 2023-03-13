class StatusSettingsParam {
  final String settingType;
  final bool status;

  StatusSettingsParam({
    required this.settingType, 
    required this.status,
  });

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
      data['setting_type'] = settingType;
      data['status'] = status;
    return data;
  }
}
