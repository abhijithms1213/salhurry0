import 'package:flutter/material.dart';
import 'package:salhurry/bottomNavBAr/bottom.dart';
import 'package:salhurry/presentation/Earnings/(4)transaction_success/transaction_success_view.dart';
import 'package:salhurry/presentation/HomeNew/hom.dart';
import 'package:salhurry/presentation/Search/search.dart';
import 'package:salhurry/presentation/Profile/profile.dart';

//This screen is main which is connects to the bottom nav bar (so it is necessery for this page)
class ScreenMain extends StatelessWidget {
  ScreenMain({super.key});
  final List screens = [
    const ScreenHome(),
     SearchPage(),
    const TransactionSuccessView(),
    const ScreenProfile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ValueListenableBuilder(
            valueListenable: values,
            //here value listeneble builder will increment or dec, based on the user click on the bottom nav bar
            builder: (context, int news, child) {
              return screens[news];
            }),
      ),
      bottomNavigationBar: const Bottom2nav(),
    );
  }
}
