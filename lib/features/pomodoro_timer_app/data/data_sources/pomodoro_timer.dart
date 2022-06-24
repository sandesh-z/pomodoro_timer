import 'package:injectable/injectable.dart';
import 'package:my_pomodoro_timer/features/pomodoro_timer_app/data/data_sources/timer.dart';
import 'package:my_pomodoro_timer/features/pomodoro_timer_app/presentation/bloc/pomodoro_bloc.dart';

@LazySingleton(as: TimerDataSource)
class TimerDataSourceImpl implements TimerDataSource {
  TimerDataSourceImpl();

  Duration duration = Duration(minutes: 25);

  @override
  subtractTimer(Duration subtractValue) {
    duration = Duration(seconds: duration.inSeconds - subtractValue.inSeconds);
  }

  @override
  resetTimer(Duration resetValue) {
    duration = Duration(minutes: 25);
  }

  @override
  Duration getTimer() {
    return duration;
  }
}
