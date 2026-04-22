import 'package:flutter/material.dart';

class HighlightButton extends StatefulWidget {
  final String buttonLabel;
  final VoidCallback onButtonPressed;
  final bool buttonActive;

  const HighlightButton(
      {super.key,
      required this.buttonLabel,
      required this.onButtonPressed,
      required this.buttonActive});

  @override
  State<HighlightButton> createState() => _HighlightButtonState();
}

class _HighlightButtonState extends State<HighlightButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 18),
      child: ElevatedButton.icon(
        onPressed: widget.buttonActive ? widget.onButtonPressed : null,
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.orange,
        ).copyWith(
          elevation: ButtonStyleButton.allOrNull(0.0),
        ),
        icon: const Icon(Icons.navigate_next_outlined),
        label: Text(
          widget.buttonLabel,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

