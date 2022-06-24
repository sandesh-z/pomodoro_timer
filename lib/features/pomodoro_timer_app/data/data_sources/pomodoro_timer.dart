import 'package:injectable/injectable.dart';
import 'package:my_pomodoro_timer/features/pomodoro_timer_app/data/data_sources/timer.dart';

@LazySingleton(as: TimerDataSource)
class TimerDataSourceImpl implements TimerDataSource {
  TimerDataSourceImpl timerDataSource;

  TimerDataSourceImpl(this.timerDataSource);

  @override
  subtractTimer(Duration subtractValue) {
    timerDataSource.subtractTimer(subtractValue);
  }

  @override
  resetTimer(Duration resetValue) {
    timerDataSource.resetTimer(resetValue);
  }

  @override
  Duration getTimer() {
    // TODO: implement getTimer
    throw UnimplementedError();
  }
}
