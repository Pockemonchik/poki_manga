import 'package:flutter/material.dart';
import '../../../core/constants.dart';


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
