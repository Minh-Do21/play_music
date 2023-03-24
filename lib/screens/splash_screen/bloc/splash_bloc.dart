import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:play_music/common/app_config.dart';

import '../../../common/session_manager.dart';
import '../../../data_layer/request_params/search_song_param.dart';
import '../../../domain_layer/repository/dashboard_repository.dart';
part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {

  final dashboardRepository = DashboardRepository();

  SplashBloc() : super(SplashState()) {
    on<LoadDataEvent>(_loadDataEvent);
  }

  // ignore: avoid_void_async
  void _loadDataEvent(SplashEvent event, Emitter<SplashState> emit) async{
      try{
        final searchSongParam = SearchSongParam(
          q: "Thị Mầu", 
          ctime: "1678954891", 
          version: "1.9.12", 
          sig: "2aa6707f0596aacc916cd795c600c539d88e71ff89488a39be2b5595195dce98204665f1107aae7ba2315ddd956ef1cb636d7926f6ecef349d33ffae00660ed5", 
          apiKey: "X5BM3w8N7MKozC0B85o4KMlzLZKhV00y"
        );

        final songs1 = await dashboardRepository.searchSong(searchSongParam);
        
      }catch (_){
      }

      if(AppConfig.instance.Cookie!.isNotEmpty){
        await Future.delayed(const Duration(seconds: 2));
        emit(GoToDashBoardScreen());
      }
      
  } 
}
