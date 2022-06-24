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
  PomodoroBloc({required this.pomodoroTimerRepository})
      : super(PomodoroState.initial(initialValue: Duration(minutes: 25))) {
    on<PomodoroTimerDecrementPressed>(
        (PomodoroTimerDecrementPressed event, Emitter<PomodoroState> emit) {
      timer?.cancel();
      timer = null;

      pomodoroTimerRepository.subtractTimer(event.decrementValue);

      emit(PomodoroState.decrement(
          decrementValue: pomodoroTimerRepository.getTimer()));
      timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        add(PomodoroEvent.decrement(decrementValue: event.decrementValue));
      });
    });
  }
}
