import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomRowWidget extends StatelessWidget {
  final String
      leading; // Text displayed on the left (e.g., "Don't have an account?")
  final String tail; // Text displayed on the right (e.g., "Create")
  final double width; // Screen width to adjust the layout
  final VoidCallback onTap; // Action to perform when the tail text is tapped

  const BottomRowWidget({
    Key? key,
    required this.leading,
    required this.tail,
    required this.width,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          MainAxisAlignment.center, // Align the row to the center
      children: [
        Text(
          leading,
          style: GoogleFonts.nunito(
            fontSize:
                width * 0.045, // Adjust font size relative to screen width
            fontWeight: FontWeight.w500,
          ),
        ),
        GestureDetector(
          onTap: onTap, // Execute the provided action when tapped
          child: Text(
            ' $tail',
            style: GoogleFonts.nunito(
              fontSize: width * 0.045,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(
                  255, 0, 0, 70), // Custom color for tail text
            ),
          ),
        ),
      ],
    );
  }
}
