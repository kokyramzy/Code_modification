import 'package:flutter/material.dart';

class WidgetButton extends StatelessWidget {
  const WidgetButton({super.key, required this.text, this.onPressed});
   final String text;
   final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        ),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}