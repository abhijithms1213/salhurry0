import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:salhurry/presentation/HomeNew/widgets/green_button.dart';
import 'package:salhurry/presentation/HomeNew/widgets/job_detail_chip.dart';
import 'package:salhurry/utilities/constants/const.dart';

class JobCard extends StatelessWidget {
  final String title;
  final double rating;
  final String location;
  final String onsite;
  final String payment;
  final String duration;
  final String buttons;

  const JobCard({
    super.key,
    required this.title,
    required this.rating,
    required this.location,
    required this.onsite,
    required this.payment,
    required this.duration,
    required this.buttons,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Job title and rating
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.yellow[700], size: 16),
                    Text(
                      rating.toString(),
                      style: const TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              width: 150,
              height: 25,
              color: Colors.black45,
            ),
            khbox5, // Job location and details
            Row(
              children: [
                const Icon(Icons.location_on_outlined),
                kwbox5,
                Text(location, style: const TextStyle(color: Colors.grey)),
              ],
            ),
            khbox10,

            SizedBox(
                height: 25,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return JobDetailChip(label: onsite);
                    },
                    separatorBuilder: (context, index) => kwbox10,
                    itemCount: 10)),

            khbox10,

            // Buttons for actions
            if (buttons != "Active Job") 
              Row(mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomButton(
                    label: 'Apply',
                    backgroundColor: const Color.fromARGB(
                        255, 214, 242, 202), // Light green background
                    textColor:
                        const Color.fromARGB(255, 31, 15, 154), // Blue text color
                    onPressed: () {
                      log("Apply button pressed");
                    },
                  ),
                ],
              )
            else
              // Show all three buttons when the job is "Active Job"
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomButton(
                    label: 'Location',
                    backgroundColor: const Color.fromARGB(
                        255, 214, 242, 202), // Light green background
                    textColor:
                        const Color.fromARGB(255, 31, 15, 154), // Blue text color
                    onPressed: () {
                      log("Location button pressed");
                    },
                  ),
                  kwbox10,
                  CustomButton(
                    label: 'Contact',
                    backgroundColor: const Color.fromARGB(
                        255, 214, 242, 202), // Light green background
                    textColor:
                        const Color.fromARGB(255, 31, 15, 154), // Blue text color
                    onPressed: () {
                      log("Contact button pressed");
                    },
                  ),
                  kwbox10,
                  CustomButton(
                    label: 'Cancel',
                    backgroundColor: const Color.fromARGB(
                        255, 214, 242, 202), // Light green background
                    textColor:
                        const Color.fromARGB(255, 31, 15, 154), // Blue text color
                    onPressed: () {
                      log("Cancel button pressed");
                    },
                  ),
                ],
              ),
            // ignore: prefer_const_constructors
            Text(
              "10 min ago",
              style: const TextStyle(color: Colors.black54),
            )
          ],
        ),
      ),
    );
  }
}
