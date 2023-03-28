import 'package:g_json/g_json.dart';
import 'package:play_music/data_layer/model/info_song_model.dart';

class SearchSongResponeModel {
  List<InfoSongModel> songs;
  InfoSongModel? songTop;

  SearchSongResponeModel({
    required this.songs,
    this.songTop,
  });

  factory SearchSongResponeModel.fromJson(JSON json) {
    return SearchSongResponeModel(
      songs: json['songs']
          .listValue
          .map((e) => InfoSongModel.fromJson(e))
          .toList(),
      songTop: InfoSongModel.fromJson(json['top']),
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['songs'] = songs;
    data['top'] = songTop;
    return data;
  }
}
