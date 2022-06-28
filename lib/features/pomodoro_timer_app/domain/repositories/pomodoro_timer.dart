abstract class PomodoroTimerRepository {
  subtractTimer(Duration subtractValue);
  resetTimer(Duration resetValue);
  setTimerType(Duration setValue);
  stopTimer();
  Duration getTimer();
}
