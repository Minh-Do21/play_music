part of 'dashboard_bloc.dart';

class DashboardState extends Equatable {
  final bool isPlaying;
  final FormzSubmissionStatus statusGetlist;
  final List<AudioSource> listMusic;
  final bool isAnimationText;

  const DashboardState({
    required this.isPlaying,
    required this.listMusic,
    required this.statusGetlist,
    required this.isAnimationText,
  });

  DashboardState copyWith({
    final bool? isPlaying,
    List<AudioSource>? listMusic,
    FormzSubmissionStatus? statusGetlist,
    bool? isAnimationText,
  }) {
    return DashboardState(
      isPlaying: isPlaying ?? this.isPlaying,
      listMusic: listMusic ?? this.listMusic,
      statusGetlist: statusGetlist ?? this.statusGetlist,
      isAnimationText: isAnimationText ?? this.isAnimationText,
    );
  }

  @override
  List<Object> get props => [
    isPlaying,
    listMusic,
    statusGetlist,
    isAnimationText,
  ];
}
