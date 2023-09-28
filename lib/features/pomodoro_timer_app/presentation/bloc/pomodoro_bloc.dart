import 'dart:async';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/repositories/pomodoro_timer.dart';
part 'pomodoro_event.dart';
part 'pomodoro_state.dart';
part 'pomodoro_bloc.freezed.dart';

class PomodoroBloc extends Bloc<PomodoroEvent, PomodoroState> {
  Timer? timer;
  TimerType currentTimerType = TimerType.pomodoro;
  PomodoroTimerRepository pomodoroTimerRepository;

  PomodoroBloc(this.pomodoroTimerRepository)
      : super(const PomodoroState.initial()) {
    on<PomodoroTimerDecrementPressed>(
        (PomodoroTimerDecrementPressed event, Emitter<PomodoroState> emit) {
      timer?.cancel();
      timer = null;

      if (pomodoroTimerRepository.getTimer().inSeconds == 0) {
        timer?.cancel();
        timer = null;
        final player = AudioPlayer();
        player.audioCache.clearAll();
        player.play(AssetSource("alarm.wav"));
        pomodoroTimerRepository.resetTimer(currentTimerType);

        return;
      }

      pomodoroTimerRepository.subtractTimer(event.decrementValue);
      emit(PomodoroState.decrementing(
          currentDuration: pomodoroTimerRepository.getTimer()));
      timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        add(PomodoroEvent.decrement(decrementValue: event.decrementValue));
      });
    });

    on<TimerTypeChanged>((TimerTypeChanged event, Emitter<PomodoroState> emit) {
      pomodoroTimerRepository.setTimerType(event.timerType);
      currentTimerType = event.timerType;
      emit(
          PomodoroState.reset(currentTime: pomodoroTimerRepository.getTimer()));
    });

    on<PomodoroTimerResetPressed>(
        (PomodoroTimerResetPressed event, Emitter<PomodoroState> emit) {
      timer?.cancel();
      pomodoroTimerRepository.resetTimer(currentTimerType);
      emit(
          PomodoroState.reset(currentTime: pomodoroTimerRepository.getTimer()));
    });

    on<PomodoroTimerStoped>(
        (PomodoroTimerStoped event, Emitter<PomodoroState> emit) {
      timer?.cancel();
      timer = null;
      emit(PomodoroState.paused(timer: pomodoroTimerRepository.getTimer()));
    });
  }
}

enum TimerType {
  pomodoro,
  shortBreak,
  longBreak,
}
