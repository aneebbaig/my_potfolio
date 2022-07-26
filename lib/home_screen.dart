import 'package:flutter/material.dart';
import 'package:my_portfolio/constants.dart';
import './sections/topSection/top_section.dart';
import 'sections/about/about_section.dart';
import 'sections/service/service_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      endDrawer: Drawer(
        child: Column(
          children: const [],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            TopSection(),
            AboutSection(),
            ServiceSection(),
            // RecentWorkSection(),
            // FeedbackSection(),
            // SizedBox(height: kDefaultPadding),
            // ContactSection(),
            // // This SizeBox just for demo
            // SizedBox(
            //   height: 500,
            // )
          ],
        ),
      ),
    );
  }
}
