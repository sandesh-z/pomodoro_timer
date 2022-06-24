import 'package:my_pomodoro_timer/features/pomodoro_timer_app/data/data_sources/timer.dart';

import '../../domain/repositories/pomodoro_timer.dart';

class PomodoroTimerRepositoryImpl extends PomodoroTimerRepository {
  TimerDataSource timerDataSource;

  PomodoroTimerRepositoryImpl(this.timerDataSource);

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
