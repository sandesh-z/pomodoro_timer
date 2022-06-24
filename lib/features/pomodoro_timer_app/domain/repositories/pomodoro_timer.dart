abstract class PomodoroTimerRepository {
  subtractTimer(Duration subtractValue);
  resetTimer(Duration resetValue);
  Duration getTimer();
}
