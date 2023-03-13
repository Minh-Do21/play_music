import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../domain_layer/repository/home_banner_repository.dart';

part 'friend_event.dart';
part 'friend_state.dart';

class FriendBloc extends Bloc<FriendEvent, FriendState> {
  final homeBannersRepository = HomeBannersRepository();

  FriendBloc() : super(FriendState()) {
    on<InitBlocEvent>(_initBlocEvent);
  }

  Future<void> _initBlocEvent(InitBlocEvent event, Emitter<FriendState> emit) async {
    emit(
      state.copyWith(text: "",)
    );
  }
}
