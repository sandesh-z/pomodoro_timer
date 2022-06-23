import 'package:flutter/material.dart';

class PomodoroPage extends StatefulWidget {
  PomodoroPage({Key? key}) : super(key: key);

  @override
  State<PomodoroPage> createState() => _PomodoroPageState();
}

class _PomodoroPageState extends State<PomodoroPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            '25:00',
            style: TextStyle(fontSize: 100),
          ),
          Container(
            padding: EdgeInsets.all(8),
            height: 55,
            width: 200,
            child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    )),
                onPressed: (() {}),
                child: const Text(
                  'START',
                  style: TextStyle(fontSize: 22),
                )),
          )
        ],
      ),
    );
  }
}
