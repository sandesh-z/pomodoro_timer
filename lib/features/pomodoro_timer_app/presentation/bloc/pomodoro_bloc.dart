import 'dart:async';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/themes/my_globals.dart';
import '../../domain/repositories/pomodoro_timer.dart';

part 'pomodoro_event.dart';
part 'pomodoro_state.dart';
part 'pomodoro_bloc.freezed.dart';

class PomodoroBloc extends Bloc<PomodoroEvent, PomodoroState> {
  Timer? timer;
  PomodoroTimerRepository pomodoroTimerRepository;

  PomodoroBloc(this.pomodoroTimerRepository)
      : super(const PomodoroState.initial(
            initialValue: Duration(minutes: 25, seconds: 0))) {
    on<PomodoroTimerDecrementPressed>(
        (PomodoroTimerDecrementPressed event, Emitter<PomodoroState> emit) {
      timer?.cancel();
      timer = null;

      if (pomodoroTimerRepository.getTimer().inSeconds == 0) {
        timer?.cancel();
        timer = null;
        final player = AudioPlayer();
        player.play(AssetSource("alarm.wav"));
        timerIsZero = true;
        emit(const PomodoroState.loading());

        return;
      }

      pomodoroTimerRepository.subtractTimer(event.decrementValue);
      emit(PomodoroState.decrement(
          currentDuration: pomodoroTimerRepository.getTimer()));
      timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        add(PomodoroEvent.decrement(decrementValue: event.decrementValue));
      });
    });

    on<PomodoroTimerLoaded>(
        (PomodoroTimerLoaded event, Emitter<PomodoroState> emit) {
      emit(const PomodoroState.initial(
          initialValue: Duration(minutes: 25, seconds: 0)));
    });

    on<TimerTypeChanged>((TimerTypeChanged event, Emitter<PomodoroState> emit) {
      pomodoroTimerRepository.setTimerType(event.setValue);
      emit(PomodoroState.setTimerType(setValue: event.setValue));
    });

    on<PomodoroTimerResetPressed>(
        (PomodoroTimerResetPressed event, Emitter<PomodoroState> emit) {
      timer?.cancel();
      pomodoroTimerRepository.resetTimer(event.resetValue);
      emit(PomodoroState.resetPressed(resetValue: event.resetValue));
    });

    on<PomodoroTimerStoped>(
        (PomodoroTimerStoped event, Emitter<PomodoroState> emit) {
      timer?.cancel();
      timer = null;
      emit(PomodoroState.stop(timer: pomodoroTimerRepository.getTimer()));
    });
  }
}
