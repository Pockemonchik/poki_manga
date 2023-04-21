import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:poki_manga/presentation/screens/detail_manga/widgets/body.dart';

import '../../../core/constants.dart';
import '../../../domain/entities/manga.dart';
import '../../widgets/bottom_nav_bar.dart';

class DetailMangaScreen extends StatelessWidget {
  const DetailMangaScreen({
    super.key,
    required this.manga,
  });

  final Manga manga;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(manga: manga),
      bottomNavigationBar: BottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
        elevation: 0.0,
        toolbarHeight: kToolbarFixHeight+10,
        backgroundColor: kPrimaryColor,
        bottomOpacity: 0.0,
        
        actions: <Widget>[
          IconButton(
            padding: EdgeInsets.only(right: kDefaultPadding),
            icon: const Icon(
              Icons.bookmark_outline,
              color: Colors.white,
              size: 25.0,
            ),
            tooltip: 'Show Snackbar',
            onPressed: () {},
          ),
          IconButton(
            padding: EdgeInsets.only(right: kDefaultPadding),
            icon: const Icon(
              Icons.download,
              color: Colors.white,
              size: 25.0,
            ),
            tooltip: 'Show Snackbar',
            onPressed: () {},
          ),
        ]);
  }
}
