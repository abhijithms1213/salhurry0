import 'package:flutter/material.dart';
import 'package:salhurry/presentation/HomeNew/widgets/top.dart';
import 'package:salhurry/presentation/Notifications/widgets/tile.dart';
import 'package:salhurry/presentation/Notifications/widgets/top_row.dart';
import 'package:salhurry/utilities/constants/const.dart';

class ScreenNotification extends StatelessWidget {
  const ScreenNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          const WidgetTopOFHome(),
          const WidgetTopSearchWithDividers(),
          Expanded(
            child: ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return const NotificationItem(
                    companyName: 'Freshworks',
                    jobTitle: 'graphic designer',
                    opportunities: '6 opportunities in bangalore,india',
                    buttonText: 'Apply now',
                    buttonColor: Colors.purple,
                    buttonTextColor: Colors.purple,
                    timeAgo: '1hr',
                    logoPath:
                        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Google_2015_logo.svg/640px-Google_2015_logo.svg.png', // Update with the actual logo path
                  );
                },
                separatorBuilder: (context, index) => const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Divider(
                        thickness: .8,
                      ),
                    ),
                itemCount: 10),
          ),
        ],
      )),
    );
  }
}

class WidgetTopSearchWithDividers extends StatelessWidget {
  const WidgetTopSearchWithDividers({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Divider(
            thickness: 5,
            color: Color.fromARGB(255, 244, 244, 244),
          ),
        ),
        // Search Bar
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 246,246,246),
              borderRadius: BorderRadius.circular(25),
            ),
            child: const Row(
              children: [
                Icon(Icons.search, color: Colors.grey),
                kwbox10,
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search', // Placeholder text
                      hintStyle:
                          TextStyle(color: Colors.grey), // Color for hint
                      border: InputBorder.none, // Removes the underline
                    ),
                    style: TextStyle(
                        color: Colors.black), // Text style inside TextField
                  ),
                ),
              ],
            ),
          ),
        ),

        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Divider(
            thickness: 5,
            color: Color.fromARGB(255, 244, 244, 244),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(15),
          child: ButtonRow(),
        ),
      ],
    );
  }
}
