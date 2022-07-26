import 'package:flutter/material.dart';

const int pcScreenSize = 1366;
const int tabletScreenSize = 768;
const int mobileScreenSize = 360;
const int customScreenSize = 1100;

class ResponsiveWidget extends StatelessWidget {
  final Widget desktop;
  final Widget tablet;
  final Widget mobile;

  const ResponsiveWidget({
    Key? key,
    required this.desktop,
    required this.tablet,
    required this.mobile,
  }) : super(key: key);

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < tabletScreenSize;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= tabletScreenSize &&
      MediaQuery.of(context).size.width < pcScreenSize;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= pcScreenSize;

  static bool isCustomScreen(BuildContext context) =>
      MediaQuery.of(context).size.width >= tabletScreenSize &&
      MediaQuery.of(context).size.width < customScreenSize;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ((context, constraints) {
        double width = constraints.maxWidth;
        if (width >= pcScreenSize) {
          return desktop;
        } else if (width < pcScreenSize && width >= tabletScreenSize) {
          return tablet;
        } else {
          return mobile;
        }
      }),
    );
  }
}
