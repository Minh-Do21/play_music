class VideoUserPostParam{
  String uniqueId;
  String userId;
  String? cursor;
  String? count;

  VideoUserPostParam({
    required this.uniqueId,
    required this.userId,
    this.cursor,
    this.count, 
  });

  Map<String, dynamic> toJson(){
    final data= <String, dynamic>{};
    data['unique_id'] = uniqueId;
    data['user_id'] = userId;
    if(count!=null) data['count'] = count;
    if(cursor != null) data['cursor'] = cursor;
    return data;
  }
}