import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:my_pomodoro_timer/core/themes/my_globals.dart';
import 'package:my_pomodoro_timer/features/pomodoro_timer_app/presentation/widgets/controls_widget.dart';
import '../../../../utils/ad_helper.dart';
import '../bloc/pomodoro_bloc.dart';
import '../widgets/popup_dialog.dart';

// ignore: must_be_immutable
class PomodoroTimerPage extends StatefulWidget {
  void Function() onNextPressed;
  final Color color;
  final bool isPomodoro;
  PomodoroTimerPage({
    Key? key,
    required this.onNextPressed,
    required this.color,
    required this.isPomodoro,
  }) : super(key: key);

  @override
  State<PomodoroTimerPage> createState() => _PomodoroTimerPageState();
}

class _PomodoroTimerPageState extends State<PomodoroTimerPage> {
  bool pomodoroStartPressed = true;
  bool isTimerActive = false;
  BannerAd? _bannerAd;
  @override
  void initState() {
    BannerAd(
      adUnitId: AdHelper.bannerAdUnitId,
      request: const AdRequest(),
      size: AdSize.banner,
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          setState(() {
            _bannerAd = ad as BannerAd;
          });
        },
        onAdFailedToLoad: (ad, err) {
          debugPrint('Failed to load a banner ad: ${err.message}');
          ad.dispose();
        },
      ),
    ).load();
    super.initState();
  }

  @override
  void dispose() {
    _bannerAd?.dispose();
    _bannerAd = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        BlocBuilder<PomodoroBloc, PomodoroState>(
          builder: (context, state) {
            return Text(
              state.map(
                initial: (value) => '25:00',
                paused: (s) => parseDuration(s.timer),
                decrementing: (value) => parseDuration(value.currentDuration),
                reset: (value) => parseDuration(value.currentTime),
                setTimerType: (value) => value.setTimerType.toString(),
              ),
              style: TextStyle(
                fontSize: 80.sp,
                fontWeight: FontWeight.bold,
              ),
            );
          },
        ),
        BlocConsumer<PomodoroBloc, PomodoroState>(
          listener: (context, state) {
            state.maybeMap(decrementing: (s) {
              setState(() {
                isTimerActive = true;
              });
            }, orElse: () {
              setState(() {
                isTimerActive = false;
              });
            });
          },
          builder: (context, state) {
            return state.maybeMap(
                initial: (value) => const StartButton(),
                reset: (s) => const StartButton(),
                orElse: () => ControlsWidget(
                      isTimerActive: isTimerActive,
                      btnColor: widget.color,
                      onPlayPausePressed: () {
                        if (!isTimerActive) {
                          BlocProvider.of<PomodoroBloc>(context).add(
                              const PomodoroEvent.decrement(
                                  decrementValue: Duration(seconds: 1)));
                        } else {
                          BlocProvider.of<PomodoroBloc>(context)
                              .add(const PomodoroEvent.stop());
                        }
                      },
                      onResetPressed: () {
                        BlocProvider.of<PomodoroBloc>(context)
                            .add(const PomodoroEvent.resetPressed());
                      },
                      onNextPressed: () {
                        showPopupDialog(
                            context: context,
                            color: widget.color,
                            title: widget.isPomodoro
                                ? "Would you like to take a short break?"
                                : "Would you like to end break?",
                            onYesPressed: () {
                              widget.onNextPressed();
                            },
                            onCancel: () {
                              BlocProvider.of<PomodoroBloc>(context).add(
                                  const PomodoroEvent.decrement(
                                      decrementValue: Duration(seconds: 1)));
                            });
                        BlocProvider.of<PomodoroBloc>(context)
                            .add(const PomodoroEvent.stop());
                      },
                    ));
          },
        ),
        const Spacer(),
        if (_bannerAd != null)
          SizedBox(
            width: _bannerAd!.size.width.toDouble(),
            height: _bannerAd!.size.height.toDouble(),
            child: AdWidget(ad: _bannerAd!),
          ),
      ],
    );
  }
}

class StartButton extends StatefulWidget {
  const StartButton({Key? key}) : super(key: key);

  @override
  State<StartButton> createState() => _StartButtonState();
}

class _StartButtonState extends State<StartButton> {
  @override
  Widget build(BuildContext context) {
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
                      timerType: TimerType.pomodoro));
              setState(() {
                pomodoroStartPressed = false;
              });
            }

            BlocProvider.of<PomodoroBloc>(context).add(
                const PomodoroEvent.decrement(
                    decrementValue: Duration(seconds: 1)));
          },
          child: Text(
            'START',
            style: TextStyle(fontSize: 22, color: pomodoroColor),
          ),
        ));
  }
}
