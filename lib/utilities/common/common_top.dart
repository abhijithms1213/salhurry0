import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginTopWidget extends StatelessWidget {
  const LoginTopWidget({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Container for the top portion with a logo and app name
        SizedBox(
          height: height * 0.25,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Logo container
              Container(
                width: width * 0.2,
                height: width * 0.2,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/logoonly.png"),
                    fit: BoxFit.cover // Uncomment if you need to adjust the image fit
                  ),
                ),
              ),
              SizedBox(width: width * 0.01),
              // App name text
              Text(
                "Salhurry",
                style: GoogleFonts.getFont(
                  'Noto Sans',
                  fontSize: width * 0.12,
                  fontWeight: FontWeight.w700,
                  color: const Color.fromARGB(255, 173, 249, 79),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
