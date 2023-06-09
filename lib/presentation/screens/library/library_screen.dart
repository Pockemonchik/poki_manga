import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:poki_manga/presentation/screens/library/widgets/body.dart';

import '../../../core/constants.dart';
import '../../widgets/bottom_nav_bar.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: buildAppBar(),
      body:  Body(),
      bottomNavigationBar: BottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
        elevation: 0.0,
        toolbarHeight: kToolbarFixHeight,
        backgroundColor: kPrimaryColor,
        bottomOpacity: 0.0,
        title: const Text('Моя библиотека',
            style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.black)),
        
        actions: <Widget>[
          IconButton(
            padding: EdgeInsets.only(right: kDefaultPadding),
            icon: const Icon(
              Icons.settings_suggest,
              color: Colors.black,
              size: 25.0,
            ),
            tooltip: 'Show Snackbar',
            onPressed: () {},
          ),
        ]
        );
  }
}
