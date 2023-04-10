import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:poki_manga/screens/reader/widgets/body.dart';

import '../../core/constants.dart';
import '../../models/manga.dart';
import '../../widgets/bottom_nav_bar.dart';

class ReaderScreen extends StatelessWidget {
  const ReaderScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
        elevation: 0.0,
        toolbarHeight: kToolbarFixHeight,
        backgroundColor: Colors.transparent,
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
