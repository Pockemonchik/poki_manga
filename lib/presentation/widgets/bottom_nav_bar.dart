import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:poki_manga/presentation/screens/catalog/catalog_screen.dart';
import 'package:poki_manga/presentation/screens/library/library_screen.dart';

import '../../core/constants.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // ignore: prefer_const_constructors
      padding: EdgeInsets.only(
        left: kDefaultPadding * 2,
        right: kDefaultPadding * 2,
        bottom: kDefaultPadding / 2,
      ),
      height: 80,
      decoration: BoxDecoration(
        color: kPrimaryColor.withOpacity(0.05),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 50,
            color: kPrimaryColor.withOpacity(0.1),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.collections_bookmark),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation1, animation2) => LibraryScreen(),
                  transitionDuration: Duration.zero,
                  reverseTransitionDuration: Duration.zero,
                ),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation1, animation2) => CatalogScreen(),
                  transitionDuration: Duration.zero,
                  reverseTransitionDuration: Duration.zero,
                ),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.manage_accounts),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
