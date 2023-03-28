part of 'search_song_bloc.dart';

abstract class SearchSongEvent {}

class SearchSongsEvent extends SearchSongEvent {
  final String textSearch;

  SearchSongsEvent({
    required this.textSearch
  });
}

class DownLoadSongEvent extends SearchSongEvent {
  final InfoSongModel infoSong;

  DownLoadSongEvent({
    required this.infoSong
  });
}
