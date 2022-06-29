import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_pomodoro_timer/core/themes/my_globals.dart';

import '../bloc/pomodoro_bloc.dart';

class ShortBreakPage extends StatefulWidget {
  void Function() onNextPressed;
  ShortBreakPage({Key? key, required this.onNextPressed}) : super(key: key);

  @override
  State<ShortBreakPage> createState() => _ShortBreakPageState();
}

class _ShortBreakPageState extends State<ShortBreakPage> {
  // bool shortBreakStartPressed = true;
  _showMyDialog() {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          // title: const Text('AlertDialog Title'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Would you like to end short break?',
                    style: TextStyle(color: shortBreakColor, fontSize: 16)),
              ],
            ),
          ),
          actions: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  child: const Text(
                    'Cancel',
                    style: TextStyle(color: Colors.red, fontSize: 16),
                  ),
                  onPressed: () {
                    BlocProvider.of<PomodoroBloc>(context).add(
                        const PomodoroEvent.decrement(
                            decrementValue: Duration(seconds: 1)));
                    Navigator.of(context).pop();
                  },
                ),
                TextButton(
                  child: Text(
                    'Yes',
                    style: TextStyle(color: shortBreakColor, fontSize: 16),
                  ),
                  onPressed: () {
                    BlocProvider.of<PomodoroBloc>(context)
                        .add(const PomodoroEvent.stop());
                    widget.onNextPressed();
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          BlocConsumer<PomodoroBloc, PomodoroState>(
            listener: (context, state) {
              state.map(
                initial: (s1) {},
                loading: (s1) {},
                loaded: (s1) {},
                started: (s1) {},
                stop: (s) {},
                decrement: (s1) {},
                resetPressed: (s1) {},
                setTimerType: (s1) {},
              );
            },
            builder: (context, state) {
              return Text(
                state.map(
                  initial: (value1) => '05:00',

                  loading: (s1) => '05:00',
                  loaded: (loaded1) => 'Loaded',
                  // loaded.initialValue.toString(),
                  started: (started) => 'Started',
                  stop: (s) => parseDuration(s.timer),
                  decrement: (value1) => parseDuration(value1.currentDuration),
                  resetPressed: (value) => parseDuration(value.currentTime),
                  setTimerType: (value1) => value1.setTimerType.toString(),
                ),
                style: const TextStyle(
                  fontSize: 80,
                  fontWeight: FontWeight.bold,
                ),
              );
            },
          ),
          BlocBuilder<PomodoroBloc, PomodoroState>(
            builder: (context, state) {
              return state.map(
                decrement: (value) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(child: SizedBox()),
                      Container(
                        // alignment: Alignment.center,
                        // padding: const EdgeInsets.only(left: 50),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                        ),
                        height: 55,
                        width: 200,
                        child: TextButton(
                            onPressed: () {
                              BlocProvider.of<PomodoroBloc>(context)
                                  .add(const PomodoroEvent.stop());
                            },
                            child: Text(
                              'STOP',
                              style: TextStyle(
                                  fontSize: 22, color: shortBreakColor),
                            )),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: IconButton(
                              color: shortBreakColor,
                              onPressed: () {
                                _showMyDialog();
                                BlocProvider.of<PomodoroBloc>(context)
                                    .add(const PomodoroEvent.stop());
                              },
                              icon: const Icon(
                                Icons.skip_next,
                                color: Colors.white,
                                size: 35,
                              )),
                        ),
                      ),
                    ],
                  );
                },
                setTimerType: (_) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(child: SizedBox()),
                      Container(
                        // alignment: Alignment.center,
                        // padding: const EdgeInsets.only(left: 50),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                        ),
                        height: 55,
                        width: 200,
                        child: TextButton(
                            onPressed: () {
                              BlocProvider.of<PomodoroBloc>(context)
                                  .add(const PomodoroEvent.stop());
                            },
                            child: Text(
                              'STOP',
                              style: TextStyle(
                                  fontSize: 22, color: shortBreakColor),
                            )),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: IconButton(
                              color: shortBreakColor,
                              onPressed: () {
                                _showMyDialog();
                                BlocProvider.of<PomodoroBloc>(context)
                                    .add(const PomodoroEvent.stop());
                              },
                              icon: const Icon(
                                Icons.skip_next,
                                color: Colors.white,
                                size: 35,
                              )),
                        ),
                      ),
                    ],
                  );
                },
                started: (_) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(child: SizedBox()),
                      Container(
                        // alignment: Alignment.center,
                        // padding: const EdgeInsets.only(left: 50),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                        ),
                        height: 55,
                        width: 200,
                        child: TextButton(
                            onPressed: () {
                              BlocProvider.of<PomodoroBloc>(context)
                                  .add(const PomodoroEvent.stop());
                            },
                            child: Text(
                              'STOP',
                              style: TextStyle(
                                  fontSize: 22, color: shortBreakColor),
                            )),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: IconButton(
                              color: shortBreakColor,
                              onPressed: () {
                                _showMyDialog();
                                BlocProvider.of<PomodoroBloc>(context)
                                    .add(const PomodoroEvent.stop());
                              },
                              icon: const Icon(
                                Icons.skip_next,
                                color: Colors.white,
                                size: 35,
                              )),
                        ),
                      ),
                    ],
                  );
                },
                loading: (_) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    height: 55,
                    width: 200,
                    child: TextButton(
                      onPressed: () {
                        if (pomodoroStartPressed) {
                          BlocProvider.of<PomodoroBloc>(context).add(
                              const PomodoroEvent.setTimerType(
                                  timerType: TimerType.POMODORO));
                          setState(() {
                            pomodoroStartPressed = false;
                          });
                        }

                        BlocProvider.of<PomodoroBloc>(context).add(
                            const PomodoroEvent.decrement(
                                decrementValue: Duration(seconds: 1)));
                        // isStartedShortBreak = true;
                      },
                      child: Text(
                        'START',
                        style: TextStyle(fontSize: 22, color: shortBreakColor),
                      ),
                    ),
                  );
                },
                loaded: (_) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    height: 55,
                    width: 200,
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          isStartedPomodoro = true;
                        });
                        if (pomodoroStartPressed) {
                          BlocProvider.of<PomodoroBloc>(context).add(
                              const PomodoroEvent.setTimerType(
                                  timerType: TimerType.POMODORO));
                          setState(() {
                            pomodoroStartPressed = false;
                          });
                        }

                        BlocProvider.of<PomodoroBloc>(context).add(
                            const PomodoroEvent.decrement(
                                decrementValue: Duration(seconds: 1)));
                        // isStartedShortBreak = true;
                      },
                      child: Text(
                        'START',
                        style: TextStyle(fontSize: 22, color: shortBreakColor),
                      ),
                    ),
                  );
                },
                resetPressed: (_) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    height: 55,
                    width: 200,
                    child: TextButton(
                      onPressed: () {
                        if (pomodoroStartPressed) {
                          BlocProvider.of<PomodoroBloc>(context).add(
                              const PomodoroEvent.setTimerType(
                                  timerType: TimerType.POMODORO));
                          setState(() {
                            pomodoroStartPressed = false;
                          });
                        }

                        BlocProvider.of<PomodoroBloc>(context).add(
                            const PomodoroEvent.decrement(
                                decrementValue: Duration(seconds: 1)));
                        // isStartedShortBreak = true;
                      },
                      child: Text(
                        'START',
                        style: TextStyle(fontSize: 22, color: shortBreakColor),
                      ),
                    ),
                  );
                },
                stop: (_) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    height: 55,
                    width: 200,
                    child: TextButton(
                      onPressed: () {
                        if (pomodoroStartPressed) {
                          BlocProvider.of<PomodoroBloc>(context).add(
                              const PomodoroEvent.setTimerType(
                                  timerType: TimerType.POMODORO));
                          setState(() {
                            pomodoroStartPressed = false;
                          });
                        }

                        BlocProvider.of<PomodoroBloc>(context).add(
                            const PomodoroEvent.decrement(
                                decrementValue: Duration(seconds: 1)));
                        // isStartedShortBreak = true;
                      },
                      child: Text(
                        'START',
                        style: TextStyle(fontSize: 22, color: shortBreakColor),
                      ),
                    ),
                  );
                },
                initial: (_) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    height: 55,
                    width: 200,
                    child: TextButton(
                      onPressed: () {
                        if (pomodoroStartPressed) {
                          BlocProvider.of<PomodoroBloc>(context).add(
                              const PomodoroEvent.setTimerType(
                                  timerType: TimerType.POMODORO));
                          setState(() {
                            pomodoroStartPressed = false;
                          });
                        }

                        BlocProvider.of<PomodoroBloc>(context).add(
                            const PomodoroEvent.decrement(
                                decrementValue: Duration(seconds: 1)));
                        // isStartedShortBreak = true;
                      },
                      child: Text(
                        'START',
                        style: TextStyle(fontSize: 22, color: shortBreakColor),
                      ),
                    ),
                  );
                },
              );
            },
          )
        ],
      ),
    );
  }
}
