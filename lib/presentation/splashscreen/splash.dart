import 'dart:async';
import 'package:flutter/material.dart';
import 'package:salhurry/presentation/InitialSetupPages/onboarding/onboarding01.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  double _opacity = 0.0; // Initial opacity of the logo

  @override
  void initState() {
    super.initState();
    // Set a timer to change the opacity after 500 milliseconds
    Timer(const Duration(milliseconds: 500), () {
      setState(() {
        _opacity = 1.0; // Set opacity to 1 for the fade-in effect
      });
    });
    // Set a timer to navigate to the onboarding screen after 3 seconds
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(_createRoute());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 1, 0, 70), // Background color
        child: Center(
          child: AnimatedOpacity(
            opacity: _opacity, // Current opacity value
            duration: const Duration(seconds: 2), // Duration of the fade-in effect
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image.asset('assets/tplogofull.png'), // Logo image
            ),
          ),
        ),
      ),
    );
  }
}

// Create a page route with a slide transition
Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        const OnboardingScreen(), // Target screen
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = const Offset(0.0, 1.0); // Start position (bottom of the screen)
      var end = Offset.zero; // End position (center of the screen)
      var curve = Curves.ease; // Animation curve

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      var offsetAnimation = animation.drive(tween);

      return SlideTransition(
        position: offsetAnimation, // Slide transition effect
        child: child,
      );
    },
  );
}
