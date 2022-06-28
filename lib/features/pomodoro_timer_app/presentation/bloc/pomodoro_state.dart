part of 'pomodoro_bloc.dart';

@freezed
class PomodoroState with _$PomodoroState {
  const factory PomodoroState.initial({required Duration initialValue}) =
      _PomodoroInitial;
  const factory PomodoroState.loading() = _PomodoroLoading;
  const factory PomodoroState.loaded({required Duration initialValue}) =
      _PomodoroLoaded;
  const factory PomodoroState.started() = _PomodoroTimerStart;
  const factory PomodoroState.stop({required Duration timer}) =
      _PomodoroTimerStop;
  const factory PomodoroState.decrement({required Duration currentDuration}) =
      _PomodoroTimerDecrement;
  const factory PomodoroState.resetPressed({required Duration resetValue}) =
      _PomodoroTimerReset;
  const factory PomodoroState.setTimerType({required Duration setValue}) =
      _PomodoroTimerChange;
  // const factory PomodoroState.timerIsZero([bool timerIsZero]) = _PomodoroIsZero;
}
