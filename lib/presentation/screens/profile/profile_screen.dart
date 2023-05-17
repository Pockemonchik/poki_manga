import 'package:flutter/material.dart';
import 'package:poki_manga/presentation/screens/profile/widgets/header_with_settings.dart';
import 'package:poki_manga/presentation/screens/profile/widgets/offline_manga_carousel.dart';
import 'package:poki_manga/presentation/screens/profile/widgets/profile_card.dart';

import '../../../core/constants.dart';
import '../../widgets/bottom_nav_bar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: buildAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: size.height*0.2,
            width: size.width,
            child: Stack(
              children: [
                const HeaderWithSettings(),
                Positioned(
                  top: 0,
                  left: 0,
                  child: ProfileCard(),
                ),
              ],
            ),
          ),
          SizedBox(
            height: kDefaultPadding,
            width: size.width,
             child: ColoredBox(color: kPrimaryColor.withOpacity(0.05)),
          ),
          OfflineMangaCarousel(),
          SizedBox(
            height: kDefaultPadding,
            width: size.width,
            child: ColoredBox(color: kPrimaryColor.withOpacity(0.05)),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
        elevation: 0.0,
        toolbarHeight: kToolbarFixHeight + 2,
        backgroundColor: kPrimaryColor,
        bottomOpacity: 0.0,
        actions: <Widget>[
          IconButton(
            padding: const EdgeInsets.only(right: kDefaultPadding),
            icon: const Icon(
              Icons.settings_suggest,
              color: Colors.black,
              size: 25.0,
            ),
            tooltip: 'Show Snackbar',
            onPressed: () {},
          ),
        ]);
  }
}
