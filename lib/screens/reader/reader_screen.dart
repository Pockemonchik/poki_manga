import 'package:flutter/material.dart';
import '../../core/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poki_manga/core/constants.dart';
import 'package:poki_manga/screens/library/widgets/header_with_settings.dart';

import '../../../cubit/manga_cubit.dart';
import '../../../services/manga_repository.dart';

class ReaderScreen extends StatefulWidget {
  const ReaderScreen({super.key});
  @override
  _ReaderScreenState createState() => _ReaderScreenState();
}

class _ReaderScreenState extends State<ReaderScreen> {
  bool showAppBar = true;
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: showAppBar ? buildAppBar(context) : null,
      body: GestureDetector(
        onTap: () {
            setState(() {
              showAppBar = showAppBar? false : true;
            });
          },
        child: PageView(
          controller: pageController,
          children: <Widget>[
            SingleChildScrollView(
              child:
                  Image.asset("assets/images/page.jpg", fit: BoxFit.fitWidth),
            ),
            SingleChildScrollView(
              child:
                  Image.asset("assets/images/page2.jpg", fit: BoxFit.fitWidth),
            ),
            SingleChildScrollView(
              child:
                  Image.asset("assets/images/page.jpg", fit: BoxFit.fitWidth),
            ),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
        elevation: 0.0,
        toolbarHeight: kToolbarFixHeight,
        leading: const BackButton(color: Colors.black),
        backgroundColor: kBackgroundColor,
        centerTitle: true,
        title: Text("Поднятие уровня в одиночку",
            style: Theme.of(context).textTheme.bodyMedium),
        bottomOpacity: 0.0,
        actions: <Widget>[
          IconButton(
            padding: EdgeInsets.only(right: kDefaultPadding),
            icon: const Icon(
              Icons.settings,
              color: Colors.black,
              size: 25.0,
            ),
            tooltip: 'Show Snackbar',
            onPressed: () {},
          ),
        ]);
  }
}
