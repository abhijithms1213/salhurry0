import 'package:flutter/material.dart';
import 'package:salhurry/presentation/HomeNew/widgets/job_card.dart';
import 'package:salhurry/presentation/HomeNew/widgets/tab_bar.dart';
import 'package:salhurry/presentation/HomeNew/widgets/top.dart';
import 'package:salhurry/utilities/constants/const.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(automaticallyImplyLeading: false,
      //   backgroundColor: Colors.white,
      //   elevation: 0,
      //   title: const Column(
      //     children: [
      //       // Logo
      //       WidgetTopOFHome(),
      //     ],
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const WidgetTopOFHome(),
              khbox20,
              // Search Bar
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 246, 246, 246),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: const Row(
                  children: [
                    Icon(Icons.search, color: Colors.grey),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search',
                          hintStyle: TextStyle(color: Colors.grey),
                          border: InputBorder.none, // Removes underline
                        ),
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),

              khbox20,
              // Active Job Section
              const Text(
                'Active Job',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                    fontSize: 19),
              ),
              khbox10, // Job Card

              const JobCard(
                title: 'Decoration Assistant',
                rating: 3.9,
                location: 'Al-Saj Kazhakootam, Tvm',
                onsite: 'On-site',
                payment: '₹800',
                duration: '5hrs',
                buttons: 'Active Job',
              ),
              const SizedBox(height: 20),
              WidgetBottomOfHomeNew()
            ],
          ),
        ),
      ),
    );
  }
}
