
import 'package:flutter/material.dart';

class WidgetProfileUpperSection extends StatelessWidget {
  const WidgetProfileUpperSection({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      clipBehavior: Clip.none,
      children: [
        // Background image section
        Container(
          margin: EdgeInsets.only(
            bottom: height * .16 - height * .07,
          ),
          child: Container(
            color: Colors.grey,
            height: height * .19,
            width: double.infinity,
            child: Image.asset(
              "assets/bgsalhurryprofile.jpg",
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
        ),
        // Settings icon
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const SizedBox(),
              const Spacer(),
              IconButton(
                icon: const Icon(
                  Icons.settings,
                  color: Colors.black,
                ),
                onPressed: () {
                  // Navigate to settings screen
                  // Navigator.of(context).push(MaterialPageRoute(
                  //   builder: (context) => const ScreenSettings(),
                  // ));
                },
              ),
            ],
          ),
        ),
        // Profile picture section
        Positioned(
          top: height * .16 - height * .07,
          child: CircleAvatar(
            radius: height * .075,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: height * .07,
              backgroundImage: const AssetImage("assets/avatar.jpg"),
            ),
          ),
        )
      ],
    );
  }
}