import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String name;
  final Color color;
  final void Function()? onPressed;

  const AppButton(
      {Key? key, required this.name, this.onPressed, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: TextButton(
          onPressed: onPressed,
          child: Text(
            name,
            style: TextStyle(color: color),
          )),
    );
  }
}
