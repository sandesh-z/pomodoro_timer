import 'package:injectable/injectable.dart';
import 'package:my_pomodoro_timer/features/pomodoro_timer_app/data/data_sources/timer.dart';
import 'package:my_pomodoro_timer/features/pomodoro_timer_app/presentation/bloc/pomodoro_bloc.dart';

@LazySingleton(as: TimerDataSource)
class TimerDataSourceImpl implements TimerDataSource {
  TimerDataSourceImpl();

  Duration duration = const Duration(minutes: 25);

  @override
  subtractTimer(Duration subtractValue) {
    duration = Duration(seconds: duration.inSeconds - subtractValue.inSeconds);
  }

  @override
  resetTimer(TimerType timerType) {
    if (timerType == TimerType.POMODORO) {
      duration = const Duration(seconds: 25);
    }
    if (timerType == TimerType.SHORT_BREAK) {
      duration = const Duration(seconds: 5);
    }
    if (timerType == TimerType.LONG_BREAK) {
      duration = const Duration(seconds: 10);
    }
  }

  @override
  Duration getTimer() {
    return duration;
  }

  @override
  setTimerType(TimerType timerType) {
    if (timerType == TimerType.POMODORO) {
      duration = Duration(seconds: 25);
    }
    if (timerType == TimerType.SHORT_BREAK) {
      duration = Duration(seconds: 5);
    }
    if (timerType == TimerType.LONG_BREAK) {
      duration = Duration(seconds: 10);
    }
  }

  @override
  Duration stopTimer() {
    return duration;
  }
}
