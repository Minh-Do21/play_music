import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../domain_layer/repository/home_banner_repository.dart';

part 'search_song_event.dart';
part 'search_song_state.dart';

class SearchSongBloc extends Bloc<SearchSongEvent, SearchSongState> {
  final homeBannersRepository = HomeBannersRepository();

  SearchSongBloc() : super(SearchSongState()) {
    on<InitBlocEvent>(_initBlocEvent);
  }

  Future<void> _initBlocEvent(InitBlocEvent event, Emitter<SearchSongState> emit) async {
    emit(
      state.copyWith(text: "",)
    );
  }
}
