class RequestOTPParams {
  final String phoneNumber;

  RequestOTPParams({required this.phoneNumber});

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['phone'] = phoneNumber;
    return data;
  }
}
