part of 'dashboard_bloc.dart';

class DashboardState extends Equatable {
  final int index;

  const DashboardState({
    required this.index,
  });

  DashboardState copyWith({
    final int? index,
  }) {
    return DashboardState(
      index: index ?? this.index,
    );
  }

  @override
  List<Object> get props => [
    index,
  ];
}
