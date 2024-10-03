import 'package:flutter/material.dart';
import 'package:salhurry/presentation/HomeNew/widgets/job_card.dart';
import 'package:salhurry/utilities/constants/const.dart';

class WidgetBottomOfHomeNew extends StatelessWidget {
  final ValueNotifier<int> selectedTabNotifier = ValueNotifier<int>(0);

  WidgetBottomOfHomeNew({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ValueListenableBuilder<int>(
            valueListenable: selectedTabNotifier,
            builder: (context, selectedIndex, _) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      selectedTabNotifier.value = 0; // Switch to New jobs tab
                    },
                    child: Text(
                      'New jobs',
                      style: TextStyle(
                        color:
                            selectedIndex == 0 ? Colors.black : Colors.black38,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      selectedTabNotifier.value = 1; // Switch to Featured tab
                    },
                    child: Text(
                      'Featured',
                      style: TextStyle(
                        color:
                            selectedIndex == 1 ? Colors.black : Colors.black38,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      selectedTabNotifier.value =
                          2; // Switch to Recommended tab
                    },
                    child: Text(
                      'Recommended',
                      style: TextStyle(
                        color:
                            selectedIndex == 2 ? Colors.black : Colors.black38,
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
        khbox2,
        SizedBox(
          child: ValueListenableBuilder<int>(
            valueListenable: selectedTabNotifier,
            builder: (context, selectedIndex, _) {
              if (selectedIndex == 0) {
                return newJobs(width, height);
              }
              if (selectedIndex == 1) {
                return featured(width, height);
              }
              if (selectedIndex == 2) {
                return recommended(width, height);
              }
              return const SizedBox();
            },
          ),
        ),
      ],
    );
  }

  ListView recommended(double width, double height) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 10,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        // Determine data based on selected tab
        String title = 'Decoration Assistant';
        double rating =
            3.9; // Use String if you need to display it, else you can keep it as a double.
        String location = 'Al-Saj Kazhakootam, Tvm';
        String onsite = 'On-site';
        String payment = '₹800';
        String duration = '5hrs';
         String buttons = 'Apply now';

        return JobCard(
          title: title,
          rating: rating,
          location: location,
          onsite: onsite,
          payment: payment,
          duration: duration,
          buttons: buttons,
        );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(
          height: 10,
        );
      },
    );
  }

  ListView featured(double width, double height) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 3,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        // Determine data based on selected tab
        String title = 'Decoration Assistant';
        double rating =
            3.9; // Use String if you need to display it, else you can keep it as a double.
        String location = 'Al-Saj Kazhakootam, Tvm';
        String onsite = 'On-site';
        String payment = '₹800';
        String duration = '5hrs';
         String buttons = 'Apply now';

        return JobCard(
          title: title,
          rating: rating,
          location: location,
          onsite: onsite,
          payment: payment,
          duration: duration,
          buttons: buttons,
        );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(
          height: 10,
        );
      },
    );
  }

  ListView newJobs(double width, double height) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 5,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        // Determine data based on selected tab
        String title = 'Decoration Assistant';
        double rating =
            3.9; // Use String if you need to display it, else you can keep it as a double.
        String location = 'Al-Saj Kazhakootam, Tvm';
        String onsite = 'On-site';
        String payment = '₹800';
        String duration = '5hrs';
         String buttons = 'Apply now';

        return JobCard(
          title: title,
          rating: rating,
          location: location,
          onsite: onsite,
          payment: payment,
          duration: duration,
          buttons: buttons,
        );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(
          height: 10,
        );
      },
    );
  }
}
