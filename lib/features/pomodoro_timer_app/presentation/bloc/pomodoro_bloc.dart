import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/repositories/pomodoro_timer.dart';

part 'pomodoro_event.dart';
part 'pomodoro_state.dart';
part 'pomodoro_bloc.freezed.dart';

class PomodoroBloc extends Bloc<PomodoroEvent, PomodoroState> {
  Timer? timer;
  PomodoroTimerRepository pomodoroTimerRepository;
  PomodoroBloc(this.pomodoroTimerRepository)
      : super(PomodoroState.initial(initialValue: Duration(minutes: 25)));

  // on<PomodoroTimerDecrementPressed>(
  //   PomodoroTimerDecrementPressed event, Emitter<PomodoroEvent> emit){
  //   timer?.cancel();
  //   timer = null;
  //   pomodoroTimerRepository.subtractTimer(Duration(seconds: 1));
  //   emit(PomodoroState.decrement(

  //   ));
  // }
}
