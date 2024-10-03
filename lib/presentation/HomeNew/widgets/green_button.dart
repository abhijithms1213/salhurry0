//button
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final Color backgroundColor;
  final Color textColor;
  final VoidCallback onPressed;

  const CustomButton({
    Key? key,
    required this.label,
    required this.backgroundColor,
    required this.textColor,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor, // Dynamic background color
        foregroundColor: textColor, // Dynamic text color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8), // Rounded corners
        ),
        padding: const EdgeInsets.symmetric(horizontal: 11, vertical: 0),
      ),
      child: Text(
        label,
        style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 12),
      ),
    );
  }
}
