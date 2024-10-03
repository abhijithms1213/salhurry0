
import 'package:flutter/material.dart';

class ApplyNowButton extends StatelessWidget {
  final String text;
  final Color borderColor;
  final Color textColor;
  final VoidCallback onPressed;

  const ApplyNowButton({
    super.key,
    required this.text,
    required this.borderColor,
    required this.textColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: borderColor), // Border color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30), // Rounded shape
        ),
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0), // Padding
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: textColor, // Text color
          fontSize: 16.0,
          fontWeight: FontWeight.w500, // Slightly bold text
        ),
      ),
    );
  }
}