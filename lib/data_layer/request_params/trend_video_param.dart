class TrendVideoParam{
  String? region;
  String? count;

  TrendVideoParam({
    this.region,
    this.count, 
  });

  Map<String, dynamic> toJson(){
    final data= <String, dynamic>{};
    if(region != null) data['region'] = region;
    if(count!=null) data['count'] = count;
    return data;
  }
}