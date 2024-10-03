import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salhurry/presentation/Notifications/notification.dart';
import 'package:salhurry/utilities/constants/const.dart';

class WidgetTopOFHome extends StatelessWidget {
  const WidgetTopOFHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // height:30,
      decoration: BoxDecoration(
        //color: const Color.fromARGB(255, 66, 32, 178),
        borderRadius: BorderRadius.circular(0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // const SizedBox(),
            // const Center(),
            khbox10,
            Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/logoonly.png"))),
                ),
                kwbox5,
                Text(
                  "Salhurry",
                  style: GoogleFonts.inter(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 173, 249, 79),
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    // Navigate to the notifications screen
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ScreenNotification(),
                    ));
                  },
                  icon: const Icon(Icons.notifications),
                ),
                kwbox5,
                IconButton(
                  onPressed: () {
                    // Navigate to the notifications screen
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ScreenNotification(),
                    ));
                  },
                  icon: const Icon(Icons.settings),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
