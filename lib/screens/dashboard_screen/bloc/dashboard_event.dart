part of 'dashboard_bloc.dart';

abstract class DashboardEvent {}

class GetListMusicEvent extends DashboardEvent{
  GetListMusicEvent();
}

class ChangeStatusAudiEvent extends DashboardEvent{
  final bool isPlaying;

  ChangeStatusAudiEvent({
    required this.isPlaying
  });
}

class ChangeAnimationTextEvent extends DashboardEvent{
  ChangeAnimationTextEvent();
}