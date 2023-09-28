import 'package:injectable/injectable.dart';
import 'package:my_pomodoro_timer/features/pomodoro_timer_app/data/data_sources/timer.dart';
import 'package:my_pomodoro_timer/features/pomodoro_timer_app/presentation/bloc/pomodoro_bloc.dart';

@LazySingleton(as: TimerDataSource)
class TimerDataSourceImpl implements TimerDataSource {
  Duration duration = const Duration(minutes: 25);
  @override
  subtractTimer(Duration subtractValue) {
    duration = Duration(seconds: duration.inSeconds - subtractValue.inSeconds);
  }

  @override
  resetTimer(TimerType timerType) {
    if (timerType == TimerType.pomodoro) {
      duration = const Duration(minutes: 25);
    }
    if (timerType == TimerType.shortBreak) {
      duration = const Duration(minutes: 5);
    }
    if (timerType == TimerType.longBreak) {
      duration = const Duration(minutes: 10);
    }
  }

  @override
  Duration getTimer() {
    return duration;
  }

  @override
  setTimerType(TimerType timerType) {
    if (timerType == TimerType.pomodoro) {
      duration = const Duration(minutes: 25);
    }
    if (timerType == TimerType.shortBreak) {
      duration = const Duration(minutes: 5);
    }
    if (timerType == TimerType.longBreak) {
      duration = const Duration(minutes: 10);
    }
  }

  @override
  Duration stopTimer() {
    return duration;
  }
}
