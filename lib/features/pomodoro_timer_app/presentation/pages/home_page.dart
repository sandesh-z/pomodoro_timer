import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_pomodoro_timer/core/themes/my_globals.dart';
import 'package:my_pomodoro_timer/features/pomodoro_timer_app/presentation/bloc/pomodoro_bloc.dart';
import 'package:my_pomodoro_timer/features/pomodoro_timer_app/presentation/pages/pomodoro_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  bool isStartedPomodoro = false;
  bool isStartedShortBreak = false;
  bool isStartedLongBreak = false;

  TabController? tabController;

  Color _color = pomodoroColor;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: _color,
        body: Padding(
          padding: EdgeInsets.all(8.0.r),
          child: Container(
            margin: EdgeInsets.only(top: 30.r),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              color: Colors.white.withOpacity(0.1),
            ),
            child: Column(
              children: [
                const SizedBox(height: 10),
                Card(
                  color: _color,
                  child: TabBar(
                    controller: tabController,
                    padding: EdgeInsets.zero,
                    isScrollable: true,
                    onTap: (id) {
                      switch (id) {
                        case 0:
                          setState(() {
                            _color = pomodoroColor;
                          });
                          BlocProvider.of<PomodoroBloc>(context).add(
                              const PomodoroEvent.setTimerType(
                                  timerType: TimerType.pomodoro));
                          BlocProvider.of<PomodoroBloc>(context)
                              .add(const PomodoroEvent.resetPressed());
                          break;
                        case 1:
                          setState(() {
                            _color = shortBreakColor;
                          });
                          BlocProvider.of<PomodoroBloc>(context).add(
                              const PomodoroEvent.setTimerType(
                                  timerType: TimerType.shortBreak));
                          BlocProvider.of<PomodoroBloc>(context)
                              .add(const PomodoroEvent.resetPressed());
                          break;
                        case 2:
                          setState(() {
                            _color = longBreakColor;
                          });
                          BlocProvider.of<PomodoroBloc>(context).add(
                              const PomodoroEvent.setTimerType(
                                  timerType: TimerType.longBreak));
                          BlocProvider.of<PomodoroBloc>(context)
                              .add(const PomodoroEvent.resetPressed());
                          break;
                      }
                    },
                    physics: const NeverScrollableScrollPhysics(),
                    indicatorColor: Colors.transparent,
                    tabs: [
                      Tab(
                        child: Text(
                          'Pomodoro',
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontFamily: 'ArialRounded',
                              letterSpacing: 1.1,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Short Break',
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontFamily: 'ArialRounded',
                              letterSpacing: 1.1,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Long Break',
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontFamily: 'ArialRounded',
                              letterSpacing: 1.1,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    controller: tabController,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      PomodoroTimerPage(
                          isPomodoro: true,
                          color: pomodoroColor,
                          onNextPressed: () {
                            setState(() {
                              tabController?.index = 1;
                              BlocProvider.of<PomodoroBloc>(context).add(
                                  const PomodoroEvent.setTimerType(
                                      timerType: TimerType.shortBreak));
                              BlocProvider.of<PomodoroBloc>(context)
                                  .add(const PomodoroEvent.resetPressed());
                              _color = shortBreakColor;
                            });
                          }),
                      PomodoroTimerPage(
                          isPomodoro: false,
                          color: shortBreakColor,
                          onNextPressed: () {
                            setState(() {
                              tabController?.index = 0;
                              BlocProvider.of<PomodoroBloc>(context).add(
                                  const PomodoroEvent.setTimerType(
                                      timerType: TimerType.pomodoro));
                              BlocProvider.of<PomodoroBloc>(context)
                                  .add(const PomodoroEvent.resetPressed());
                              _color = pomodoroColor;
                            });
                          }),
                      PomodoroTimerPage(
                          isPomodoro: false,
                          color: longBreakColor,
                          onNextPressed: () {
                            setState(() {
                              tabController?.index = 0;
                              BlocProvider.of<PomodoroBloc>(context).add(
                                  const PomodoroEvent.setTimerType(
                                      timerType: TimerType.pomodoro));
                              BlocProvider.of<PomodoroBloc>(context)
                                  .add(const PomodoroEvent.resetPressed());
                              _color = pomodoroColor;
                            });
                          }),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
