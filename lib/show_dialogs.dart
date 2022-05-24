/*
 * @Author       : Linloir
 * @Date         : 2022-03-07 10:28:38
 * @LastEditTime : 2022-03-07 10:59:46
 * @Description  : Show import failed dialog
 */

import 'package:flutter/material.dart';

Future<bool?> showFailedDialog({required context}) {
  return showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Error Occurred'),
          content: const Text(
              'Wax baa khaldamay markii la soo dejinayay qaamuuska, waxba lama soo dejiyo.'),
          actions: [
            TextButton(
              child: const Text('Isku day'),
              onPressed: () => Navigator.of(context).pop(true),
            ),
            TextButton(
              child: const Text('Iska daa'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      });
}

Future<bool?> showLoadingDialog({required context}) {
  return showDialog(
    context: context,
    builder: (context) {
      return UnconstrainedBox(
        child: SizedBox(
          width: 280,
          child: AlertDialog(
            contentPadding: const EdgeInsets.all(50.0),
            content: Align(
              alignment: Alignment.center,
              child: CircularProgressIndicator(
                color: Theme.of(context).brightness == Brightness.dark
                    ? Colors.white
                    : Colors.grey[850],
                strokeWidth: 6.0,
              ),
            ),
          ),
        ),
      );
    },
    barrierDismissible: false,
  );
}
