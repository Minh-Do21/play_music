import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../common/session_manager.dart';
part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {

  SplashBloc() : super(SplashState()) {
    on<LoadDataEvent>(_loadDataEvent);
  }

  // ignore: avoid_void_async
  void _loadDataEvent(SplashEvent event, Emitter<SplashState> emit) async{
      await Future.delayed(const Duration(seconds: 2));

       emit(GoToDashBoardScreen());
      
  } 
}
