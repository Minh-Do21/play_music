import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../domain_layer/repository/home_banner_repository.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final homeBannersRepository = HomeBannersRepository();

  ProfileBloc() : super(ProfileState()) {
    on<InitBlocEvent>(_initBlocEvent);
  }

  Future<void> _initBlocEvent(InitBlocEvent event, Emitter<ProfileState> emit) async {
    emit(
      state.copyWith(text: "",)
    );
  }
}
