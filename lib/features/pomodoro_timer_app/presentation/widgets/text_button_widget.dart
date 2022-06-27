// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget buildButtons() {
  final isRunning = false;
  return isRunning
      ? Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: () {}, child: Text('Stop')),
            SizedBox(width: 12),
            IconButton(onPressed: () {}, icon: Icon(Icons.pause)),
          ],
        )
      : TextButton(
          child: Text('Start'),
          onPressed: () {},
        );
}
