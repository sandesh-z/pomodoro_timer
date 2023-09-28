import 'package:flutter/material.dart';
import 'package:my_pomodoro_timer/features/pomodoro_timer_app/presentation/widgets/text_button_widget.dart';

class ControlsWidget extends StatelessWidget {
  final void Function()? onPlayPausePressed;
  final void Function()? onResetPressed;
  final void Function()? onNextPressed;
  final bool isTimerActive;
  final Color btnColor;
  const ControlsWidget(
      {Key? key,
      this.onPlayPausePressed,
      this.onResetPressed,
      this.onNextPressed,
      required this.btnColor,
      required this.isTimerActive})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Expanded(child: SizedBox()),
        AppButton(
          name: isTimerActive ? 'PAUSE' : 'START',
          onPressed: onPlayPausePressed,
          color: btnColor,
        ),
        const SizedBox(width: 12),
        AppButton(
          name: 'RESET',
          onPressed: onResetPressed,
          color: btnColor,
        ),
        Expanded(
          child: Align(
            alignment: Alignment.centerLeft,
            child: IconButton(
                color: btnColor,
                onPressed: onNextPressed,
                icon: const Icon(
                  Icons.skip_next,
                  color: Colors.white,
                  size: 35,
                )),
          ),
        ),
      ],
    );
  }
}
