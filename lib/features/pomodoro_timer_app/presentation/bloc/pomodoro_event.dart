part of 'pomodoro_bloc.dart';

@freezed
class PomodoroEvent with _$PomodoroEvent {
  const factory PomodoroEvent.loding() = PomodoroTimerLoading;
  const factory PomodoroEvent.loaded() = PomodoroTimerLoaded;
  const factory PomodoroEvent.stop() = PomodoroTimerStoped;
  const factory PomodoroEvent.started() = PomodoroTimerStarted;
  const factory PomodoroEvent.decrement({required Duration decrementValue}) =
      PomodoroTimerDecrementPressed;
  const factory PomodoroEvent.resetPressed({required Duration resetValue}) =
      PomodoroTimerResetPressed;
  const factory PomodoroEvent.setTimerType({required Duration setValue}) =
      TimerTypeChanged;
}
