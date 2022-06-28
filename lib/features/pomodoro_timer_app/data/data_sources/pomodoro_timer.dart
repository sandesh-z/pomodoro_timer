import 'package:injectable/injectable.dart';
import 'package:my_pomodoro_timer/features/pomodoro_timer_app/data/data_sources/timer.dart';

@LazySingleton(as: TimerDataSource)
class TimerDataSourceImpl implements TimerDataSource {
  TimerDataSourceImpl();

  Duration duration = const Duration(minutes: 25);

  Duration shortBreakDuration = const Duration(minutes: 5);
  Duration longBreakDuration = const Duration(minutes: 10);

  @override
  subtractTimer(Duration subtractValue) {
    duration = Duration(seconds: duration.inSeconds - subtractValue.inSeconds);
  }

  @override
  resetTimer(Duration resetValue) {
    duration = Duration(minutes: resetValue.inMinutes);
  }

  @override
  Duration getTimer() {
    return duration;
  }

  @override
  setTimerType(Duration setValue) {
    duration = Duration(minutes: setValue.inMinutes);
  }

  @override
  Duration stopTimer() {
    return duration;
  }
}
