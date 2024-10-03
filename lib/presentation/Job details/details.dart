import 'package:flutter/material.dart';
import 'package:salhurry/utilities/constants/const.dart';

class JobPreviewScreen extends StatelessWidget {
  const JobPreviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const WidgetTopOfJobDetails(),
          Expanded(
            // Ensure this content can expand with available space
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Center(
                      child: Text(
                        'Job Title',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    khbox15,
                    // Location
                    Container(
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 247, 247, 247),
                          borderRadius: BorderRadius.circular(30)),
                      height: 75,
                      width: double.infinity,
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(Icons.location_on),
                            kwbox5,
                            Text('Location'),
                          ],
                        ),
                      ),
                    ),
                    khbox15,
                    // On-site
                    Container(
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 247, 247, 247),
                          borderRadius: BorderRadius.circular(30)),
                      height: 75,
                      width: double.infinity,
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            kwbox10,
                            Text(
                              'On-Site           800 Rs',
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                    khbox15,
                    Container(
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 247, 247, 247),
                          borderRadius: BorderRadius.circular(30)),
                      height: 75,
                      width: double.infinity,
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            kwbox10,
                            Text('02-06-2024',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            SizedBox(width: 8),
                            Text('11pm - 4pm',
                                style: TextStyle(fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                    ),
                    khbox15,
                    khbox20,
                    const Text(
                      'Requirements',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    khbox10,
                    const Row(
                      children: [
                        kwbox20,
                        Expanded(
                          // Expanded added here
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '• Need to have prior experience in this work',
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16),
                              ),
                              Text(
                                '• Able to lift weights',
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16),
                              ),
                              Text(
                                '• etc',
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    khbox15,
                    const Text(
                      'Arrive on Time at the Given Location',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    khbox20,
                    khbox30,
                    Center(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 1, 0, 70),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 60, vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: const Text(
                          'Apply Now',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class WidgetTopOfJobDetails extends StatelessWidget {
  const WidgetTopOfJobDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: const Color.fromARGB(255, 1, 0, 70),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
              onPressed: () {},
            ),
            const Spacer(flex: 2), // Spacer before the text
            const Text(
              'Job preview',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            const Spacer(flex: 3), // Spacer after the text to balance
            const SizedBox(), // Empty SizedBox as a placeholder for further widgets
          ],
        ),
      ),
    );
  }
}
