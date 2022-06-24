part of 'pomodoro_bloc.dart';

@freezed
class PomodoroState with _$PomodoroState {
  const factory PomodoroState.initial({required Duration initialValue}) =
      _PomodoroInitial;
  const factory PomodoroState.loading() = _PomodoroLoading;
  const factory PomodoroState.loaded({required Duration initialValue}) =
      _PomodoroLoaded;
  const factory PomodoroState.started() = _PomodoroTimerStart;
  const factory PomodoroState.decrement({required Duration currentDuration}) =
      _PomodoroTimerDecrement;
}
