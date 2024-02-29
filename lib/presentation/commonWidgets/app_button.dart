import 'package:flutter/material.dart';

class AppButton extends StatefulWidget {
  final VoidCallback onPressCallback;
  final String text;
  const AppButton(
      {required this.onPressCallback, required this.text, super.key});

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onPressCallback,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
      ),
      child: SizedBox(
        height: 25,
        child: Center(
          child: Text(
            widget.text,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
