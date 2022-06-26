abstract class PomodoroTimerRepository {
  subtractTimer(Duration subtractValue);
  resetTimer(Duration resetValue);
  Duration setTimerType(Duration setValue);
  Duration getTimer();
}
