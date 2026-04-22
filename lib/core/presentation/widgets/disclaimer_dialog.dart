import 'package:flutter/material.dart';
import 'package:opennutritracker/generated/l10n.dart';

class DisclaimerDialog extends StatelessWidget {
  const DisclaimerDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Color(0xFF549576),
      title: Text(
        S.of(context).settingsDisclaimerLabel,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      content: Text(
          S.of(context).disclaimerText,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
      ),
      actions: [
        OutlinedButton(
            onPressed: () {
              Navigator.of(context).pop(true);
            },
            style: TextButton.styleFrom(
              backgroundColor: Colors.orange,
              foregroundColor: Colors.white
            ),
            child: Text(S.of(context).dialogOKLabel))
      ],
    );
  }
}
