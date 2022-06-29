import 'package:my_pomodoro_timer/features/pomodoro_timer_app/presentation/bloc/pomodoro_bloc.dart';

abstract class PomodoroTimerRepository {
  subtractTimer(Duration subtractValue);
  resetTimer(TimerType timerType);
  setTimerType(TimerType setTimerType);
  stopTimer();
  Duration getTimer();
}
