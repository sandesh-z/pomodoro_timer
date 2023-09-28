part of 'pomodoro_bloc.dart';

@freezed
class PomodoroEvent with _$PomodoroEvent {
  const factory PomodoroEvent.stop() = PomodoroTimerStoped;
  const factory PomodoroEvent.decrement({required Duration decrementValue}) =
      PomodoroTimerDecrementPressed;
  const factory PomodoroEvent.resetPressed() = PomodoroTimerResetPressed;
  const factory PomodoroEvent.setTimerType({required TimerType timerType}) =
      TimerTypeChanged;
}
