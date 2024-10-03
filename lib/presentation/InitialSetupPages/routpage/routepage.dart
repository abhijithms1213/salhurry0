import 'package:flutter/material.dart';
import 'package:salhurry/presentation/HomeNew/hom.dart';
import 'package:salhurry/utilities/constants/const.dart';

class ScreenRoute extends StatelessWidget {
  const ScreenRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/tplogofull.png",
                      ),
                      fit: BoxFit.cover)),
            ),
            khbox30,
            khbox20,
            // Title Text
            const Text(
              'Choose your profile Style',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10.0),

            // Subtitle Text
            Text(
              'let’s get started with choosing your desired profile style, student and employee',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.grey[600],
              ),
              textAlign: TextAlign.center,
            ),
            khbox30,
            khbox10,
            // Job Seeker Button
            ElevatedButton(
              onPressed: () {
                // Job Seeker button logic
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>  const ScreenHome(),
                ));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF0A0A56), // Dark Blue color
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 100.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              child: const Text(
                'Job Seeker',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 20.0),

            // Services Button
            OutlinedButton(
              onPressed: () {
                // Services button logic
              },
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                    vertical: 15.0, horizontal: 110.0),
                side: const BorderSide(
                    color: Color(0xFF0A0A56), width: 2.0), // Dark Blue border
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              child: const Text(
                'Services',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Color(0xFF0A0A56), // Dark Blue text
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
