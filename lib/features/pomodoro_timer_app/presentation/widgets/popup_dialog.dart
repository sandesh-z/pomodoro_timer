import 'package:flutter/material.dart';

showPopupDialog(
    {required BuildContext context,
    required Color color,
    required String title,
    void Function()? onYesPressed,
    void Function()? onCancel}) {
  return showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text(
                title,
                style: TextStyle(color: color, fontSize: 16),
              ),
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
                  style: TextStyle(color: Colors.green, fontSize: 16),
                ),
                onPressed: () {
                  if (onCancel != null) {
                    onCancel();
                  }
                  Navigator.of(context).pop();
                },
              ),
              TextButton(
                child: Text(
                  'Yes',
                  style: TextStyle(color: color, fontSize: 16),
                ),
                onPressed: () {
                  if (onYesPressed != null) {
                    onYesPressed();
                  }
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
