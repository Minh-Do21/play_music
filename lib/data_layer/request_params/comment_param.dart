class CommentParam{
  String? url;
  String? count;
  String? cursor;

  CommentParam({
    this.url,
    this.count,
    this.cursor,
  });

  Map<String, dynamic> toJson(){
    final data= <String, dynamic>{};
    if(url != null) data['url'] = url;
    if(count!=null) data['count'] = count;
    if(cursor!=null) data['cursor'] = cursor;
    return data;
  }
}