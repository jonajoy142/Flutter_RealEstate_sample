// ignore: avoid_web_libraries_in_flutter
// import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:realestate_ui/contents.dart';
import 'package:realestate_ui/screens/landingScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    double screenWidth = window.physicalSize.width;
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: COLOR_WHITE,
        
        accentColor: COLOR_DARK_BLUE,
        textTheme: screenWidth< 500 ? SMALL_TEXT_THEME : DEFAULT_TEXT_THEME,
      ),
      home: LandingScreen(),
    );
  }
}
