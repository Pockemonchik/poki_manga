import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poki_manga/presentation/cubit/detail_manga_cubit/detail_manga_cubit.dart';
import 'package:poki_manga/presentation/cubit/manga_library_cubit/manga_library_cubit.dart';
import 'package:poki_manga/presentation/screens/catalog/catalog_screen.dart';
import 'package:poki_manga/presentation/screens/library/library_screen.dart';
import 'package:poki_manga/core/constants.dart';
import 'di.dart' as di;
import 'presentation/cubit/manga_catalog_cubit/manga_catalog_cubit.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<MangaCatalogCubit>(
            create: (context) => di.sl<MangaCatalogCubit>()),
        BlocProvider<MangaLibraryCubit>(
            create: (context) => di.sl<MangaLibraryCubit>()),
         BlocProvider<DetailMangaCubit>(
            create: (context) => di.sl<DetailMangaCubit>()),
      ],
      child: MaterialApp(
        title: "Poki MangaEntity!",
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
