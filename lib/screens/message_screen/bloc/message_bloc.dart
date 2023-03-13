import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../domain_layer/repository/home_banner_repository.dart';

part 'message_event.dart';
part 'message_state.dart';

class MessageBloc extends Bloc<MessageEvent, MessageState> {
  final homeBannersRepository = HomeBannersRepository();

  MessageBloc() : super(MessageState()) {
    on<InitBlocEvent>(_initBlocEvent);
  }

  Future<void> _initBlocEvent(InitBlocEvent event, Emitter<MessageState> emit) async {
    emit(
      state.copyWith(text: "",)
    );
  }
}
