class VerifyDeviceParam {
  final String deviceType;
  final String deviceId;
  final String tokenFirebase;

  VerifyDeviceParam({
    required this.deviceType, 
    required this.deviceId,
    required this.tokenFirebase,
  });

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
      data['device_type'] = deviceType;
      data['device_id'] = deviceId;
      data['token_firebase'] = tokenFirebase;
    return data;
  }
}
