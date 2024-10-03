import 'package:flutter/material.dart';
import 'package:salhurry/presentation/Notifications/widgets/appy_button.dart';
import 'package:salhurry/utilities/constants/const.dart';

class NotificationHistoryPage extends StatelessWidget {
  const NotificationHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          NotificationItem(
            companyName: 'Freshworks',
            jobTitle: 'graphic designer',
            opportunities: '6 opportunities in bangalore,india',
            buttonText: 'Apply now',
            buttonColor: Colors.purple,
            buttonTextColor: Colors.purple,
            timeAgo: '1hr',
            logoPath:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Google_2015_logo.svg/640px-Google_2015_logo.svg.png', // Update with the actual logo path
          ),
          NotificationItem(
            companyName: 'DOORDASH',
            jobTitle: 'closed hiring currently',
            opportunities: '',
            buttonText: '',
            buttonColor: Colors.transparent,
            buttonTextColor: Colors.transparent,
            timeAgo: '12hr',
            logoPath:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Google_2015_logo.svg/640px-Google_2015_logo.svg.png', // Update with the actual logo path
          ),
          NotificationItem(
            companyName: 'Salhurry',
            jobTitle: 'attend our survey to hire fast',
            opportunities: 'opportunities in Delhi, india',
            buttonText: 'Attend now',
            buttonColor: Colors.purple,
            buttonTextColor: Colors.white,
            timeAgo: 'now',
            logoPath:
                'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Google_2015_logo.svg/640px-Google_2015_logo.svg.png', // Update with the actual logo path
          ),
        ],
      ),
    );
  }
}

class NotificationItem extends StatelessWidget {
  final String companyName;
  final String jobTitle;
  final String opportunities;
  final String buttonText;
  final Color buttonColor;
  final Color buttonTextColor;
  final String timeAgo;
  final String logoPath;

  const NotificationItem({
    super.key,
    required this.companyName,
    required this.jobTitle,
    required this.opportunities,
    required this.buttonText,
    required this.buttonColor,
    required this.buttonTextColor,
    required this.timeAgo,
    required this.logoPath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
      child: SizedBox(
        // padding: const EdgeInsets.all(15.0),
        // decoration: BoxDecoration(
        //   color: Colors.white,
        //   borderRadius: BorderRadius.circular(10.0),
        //   boxShadow: [
        //     BoxShadow(
        //       color: Colors.grey.shade200,
        //       blurRadius: 5,
        //       offset: const Offset(0, 2),
        //     ),
        //   ],
        // ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 20,
                  width: 50,
                  decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage(logoPath))),
                ),
                kwbox10,
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "$companyName    ",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Expanded(
                        child: Text(
                          "6 opportunities in \nbangalore,India",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            khbox20,
            ApplyNowButton(
              text: 'Apply now',
              borderColor: Colors.purple,
              textColor: Colors.purple,
              onPressed: () {
                // Action to perform when button is clicked
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  timeAgo,
                  style: TextStyle(color: Colors.grey.shade600),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
