part of 'pomodoro_bloc.dart';

@freezed
class PomodoroState with _$PomodoroState {
  const factory PomodoroState.initial() = _PomodoroInitial;
  const factory PomodoroState.paused({required Duration timer}) =
      _PomodoroTimerPaused;
  const factory PomodoroState.decrementing(
      {required Duration currentDuration}) = _PomodoroTimerDecrementing;
  const factory PomodoroState.reset({required Duration currentTime}) =
      _PomodoroTimerReset;
  const factory PomodoroState.setTimerType({required TimerType setTimerType}) =
      _PomodoroTimerChange;
}
