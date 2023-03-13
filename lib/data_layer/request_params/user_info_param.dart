class UserInfoParam{
  final String uniqueId;
  final String userId;

  UserInfoParam({
    required this.uniqueId,
    required this.userId,
  });

  Map<String, dynamic> toJson(){
    final data= <String, dynamic>{};
    data['unique_id'] = uniqueId;
    data['user_id'] = userId;
    return data;
  }
}