library globals;

import 'package:flutter/cupertino.dart';

bool timerIsZero = false;

bool buttonPressed = false;

bool pomodoroStartPressed = true;
// bool shortBreakStartPressed = true;
bool longBreakStartPressed = true;

bool isStartedShortBreak = false;
bool isStartedLongBreak = false;
bool isStartedPomodoro = false;

final pomodoroColor = Color.fromRGBO(217, 85, 80, 0.9);
final shortBreakColor = Color.fromRGBO(76, 145, 149, 0.9);
final longBreakColor = Color.fromRGBO(69, 124, 163, 0.9);

String parseDuration(Duration duration) {
  var seconds = (duration.inSeconds % 60).toString().padLeft(2, '0');
  var minutes = (duration.inMinutes % 60).toString().padLeft(2, '0');
  return "$minutes:$seconds";
}
