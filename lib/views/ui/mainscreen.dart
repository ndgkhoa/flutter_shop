import 'package:flutter/material.dart';
import 'package:flutter_application_1/controllers/mainscreen_provider.dart';
import 'package:flutter_application_1/views/shared/bottom_nav.dart';
import 'package:flutter_application_1/views/ui/cartpage.dart';
import 'package:flutter_application_1/views/ui/homepage.dart';
import 'package:flutter_application_1/views/ui/profile.dart';
import 'package:flutter_application_1/views/ui/searchpage.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  List<Widget> pageList = const [
    HomePage(),
    SearchPage(),
    HomePage(),
    CartPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenNotifier>(
      builder: (context, mainScreenNotifier, child) {
        return Scaffold(
          backgroundColor: const Color(0xFFE2E2E2),
          body: pageList[mainScreenNotifier.pageIndex],
          bottomNavigationBar: const BottomNavBar(),
        );
      },
    );
  }
}
