class SearchSongParam{
  String q;
  String ctime;
  String version;
  String sig;
  String apiKey;

  SearchSongParam({
    required this.q,
    required this.ctime,
    required this.version,
    required this.sig,
    required this.apiKey,
  });

  Map<String, dynamic> toJson(){
    final data= <String, dynamic>{};
    data['q'] = q;
    data['ctime'] = ctime;
    data['version'] = version;
    data['sig'] = sig;
    data['apiKey'] = apiKey;
    return data;
  }
}