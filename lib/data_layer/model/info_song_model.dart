import 'package:equatable/equatable.dart';
import 'package:g_json/g_json.dart';

class InfoSongModel extends Equatable{
  String encodeId;
  String title;
  String alias;
  String artistsNames;
  String thumbnailM;
  String pathFileLocal;
  String objectType;
  int streamingStatus;

  InfoSongModel({
    required this.encodeId,
    required this.title,
    required this.alias,
    required this.artistsNames,
    required this.thumbnailM,
    required this.pathFileLocal,
    required this.objectType,
    required this.streamingStatus,
  });

  factory InfoSongModel.fromJson(JSON json) {
    if(json['streamingStatus'].integerValue != 1){
      return InfoSongModel(
        encodeId: "",
        title: "",
        alias: "",
        artistsNames: "",
        thumbnailM: "",
        pathFileLocal: "",
        objectType: "",
        streamingStatus: 0,
      );
    }
    return InfoSongModel(
      encodeId: json['encodeId'].stringValue,
      title: json['title'].stringValue,
      alias: json['alias'].stringValue,
      artistsNames: json['artistsNames'].stringValue,
      thumbnailM: json['thumbnailM'].stringValue,
      pathFileLocal: json['pathFileLocal'].stringValue,
      objectType: json['objectType'].stringValue,
      streamingStatus: json['streamingStatus'].integerValue,
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['encodeId'] = encodeId;
    data['title'] = title;
    data['alias'] = alias;
    data['artistsNames'] = artistsNames;
    data['thumbnailM'] = thumbnailM;
    data['pathFileLocal'] = pathFileLocal;
    data['objectType'] = objectType;
    data['streamingStatus'] = streamingStatus;
    return data;
  }

  @override
  // TODO: implement props
  List<Object?> get props => [
    encodeId,
    title,
    alias,
    artistsNames,
    thumbnailM,
    pathFileLocal,
    objectType,
    streamingStatus,
  ];
}