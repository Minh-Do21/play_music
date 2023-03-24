import 'package:g_json/g_json.dart';
import 'package:play_music/data_layer/model/info_song_model.dart';

class SearchSongResponeModel {
  List<InfoSongModel> songs;

  SearchSongResponeModel({
    required this.songs,
  });

  factory SearchSongResponeModel.fromJson(JSON json) {
    return SearchSongResponeModel(
      songs: json['songs']
          .listValue
          .map((e) => InfoSongModel.fromJson(e))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['songs'] = songs;
    return data;
  }
}
