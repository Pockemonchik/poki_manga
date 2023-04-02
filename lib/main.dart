import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poki_manga/screens/catalog/catalog_screen.dart';
import 'package:poki_manga/screens/library/library_screen.dart';

import 'package:poki_manga/core/constants.dart';
import 'package:poki_manga/services/manga_repository.dart';

import 'cubit/manga_cubit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final mangaRepository = MangaRepository();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MangaCubit(mangaRepository),
      child: MaterialApp(
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
            displayLarge:
                TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
            titleLarge: TextStyle(
                fontSize: 30.0, fontFamily: 'Gilroy', color: kTextColor),
            bodyLarge: TextStyle(
                fontSize: 25.0,
                fontFamily: 'Gilroy',
                fontWeight: FontWeight.bold),
            bodyMedium: TextStyle(
                fontSize: 14.0,
                fontFamily: 'Gilroy',
                color: kTextColor,
                fontWeight: FontWeight.bold),
            bodySmall: TextStyle(
                fontSize: 11.0,
                fontFamily: 'Gilroy',
                color: kTextColor,
                fontWeight: FontWeight.bold),
            labelLarge: TextStyle(
              fontSize: 25.0,
              fontFamily: 'Gilroy',
              color: kShapeTextColor,
            ),
            labelMedium: TextStyle(
              fontSize: 14.0,
              fontFamily: 'Gilroy',
              color: kShapeTextColor,
            ),
            labelSmall: TextStyle(
              fontSize: 10.0,
              fontFamily: 'Gilroy',
              color: kShapeTextColor,
            ),
          ),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: '/library',
        routes: {
          '/library': (context) => LibraryScreen(),
          '/catalog': (context) => CatalogScreen()
        },
      ),
    );
  }
}
