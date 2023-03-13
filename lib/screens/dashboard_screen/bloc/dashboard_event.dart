part of 'dashboard_bloc.dart';

abstract class DashboardEvent {}

class ChangeScreenEvent extends DashboardEvent{
  final int index;

  ChangeScreenEvent({
    required this.index
  });
}