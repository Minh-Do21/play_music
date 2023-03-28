part of 'search_song_bloc.dart';

class SearchSongState extends Equatable {
  List<InfoSongModel> songsSearch;
  InfoSongModel? songTop;
  FormzSubmissionStatus statusSearch;
  FormzSubmissionStatus statusDownLoad;
  String contentNoti;
  List<InfoSongModel>? listSongDownLoad;

  SearchSongState({
    required this.songsSearch,
    this.songTop,
    required this.statusSearch,
    required this.statusDownLoad,
    required this.contentNoti,
    required this.listSongDownLoad,
  });

  SearchSongState copyWith({
    List<InfoSongModel>? songsSearch,
    InfoSongModel? songTop,
    FormzSubmissionStatus? statusSearch,
    FormzSubmissionStatus? statusDownLoad,
    String? contentNoti,
    List<InfoSongModel>? listSongDownLoad,
  }) {
    return SearchSongState(
      songsSearch: songsSearch ?? this.songsSearch,
      songTop: songTop ?? this.songTop,
      statusSearch: statusSearch ?? this.statusSearch,
      statusDownLoad: statusDownLoad ?? this.statusDownLoad,
      contentNoti: contentNoti ?? this.contentNoti,
      listSongDownLoad: listSongDownLoad ?? this.listSongDownLoad,
    );
  }

  @override
  List<Object?> get props => [
    songsSearch,
    songTop,
    statusSearch,
    statusDownLoad,
    contentNoti,
    listSongDownLoad,
  ];
}
