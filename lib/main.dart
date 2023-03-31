import 'package:flutter/material.dart';
import 'package:poki_manga/screens/library/library_screen.dart';

import 'package:poki_manga/core/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Poki Manga!",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: kPrimaryColor,
           elevation: 0,
            scrolledUnderElevation: 0,
        ),
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: kPrimaryColor,
        fontFamily: 'Gilroy',
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          titleLarge: TextStyle(fontSize: 30.0, fontFamily: 'Gilroy',color: kTextColor),
          bodyMedium: TextStyle(fontSize: 10.0, fontFamily: 'Gilroy',fontWeight: FontWeight.bold),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LibraryScreen(),
    );
  }
}
