import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../../../domain_layer/repository/authen_repository.dart';
part 'dashboard_event.dart';
part 'dashboard_state.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  final authenRepository = AuthenRepository();
  DashboardBloc() 
      : super(const DashboardState(
        index: 0,
      )
    ){
    on<ChangeScreenEvent>(_changeScreenEventToState);
  }

  // ignore: avoid_void_async
  void _changeScreenEventToState(ChangeScreenEvent event, Emitter<DashboardState> emit) async {
     emit(state.copyWith(
        index: event.index
      ));
  }
}
