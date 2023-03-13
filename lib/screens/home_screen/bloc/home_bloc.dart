import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../domain_layer/repository/home_banner_repository.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final homeBannersRepository = HomeBannersRepository();

  HomeBloc() : super(HomeState()) {
    on<InitBlocEvent>(_initBlocEvent);
  }

  Future<void> _initBlocEvent(InitBlocEvent event, Emitter<HomeState> emit) async {
    emit(
      state.copyWith(text: "",)
    );
  }
}
