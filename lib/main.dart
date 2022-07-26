import 'package:flutter/material.dart';
import './constants.dart';
import './home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Portfolio',
      theme: ThemeData(
        inputDecorationTheme: kDefaultInputDecorationTheme,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        // textTheme: TextTheme(
        //   headline1: GoogleFonts.raleway(),
        //   headline2: GoogleFonts.raleway(),
        //   headline3: GoogleFonts.raleway(),
        //   headline4: GoogleFonts.raleway(),
        //   headline5: GoogleFonts.raleway(),
        //   headline6: GoogleFonts.raleway(),
        //   bodySmall: GoogleFonts.lato(),
        //   bodyMedium: GoogleFonts.lato(),
        //   bodyLarge: GoogleFonts.lato(),
        // ),
      ),
      home: const HomeScreen(),
    );
  }
}
