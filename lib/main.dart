import 'package:flutter/material.dart';
import 'package:salhurry/Main/screenmain.dart';
import 'package:salhurry/presentation/Job%20details/details.dart';
import 'package:salhurry/presentation/Profile/profile.dart';
import 'package:salhurry/presentation/login/login.dart';
import 'package:salhurry/presentation/settings/settings/settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  ScreenProfile(),
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,

      // const ScreenLogin(), // Default to login screen since there's no user present.
      routes: {
        '/login': (context) => const ScreenLogin(),
        '/main': (context) => ScreenMain(), // Added route for main screen
      },
    );
  }
}
