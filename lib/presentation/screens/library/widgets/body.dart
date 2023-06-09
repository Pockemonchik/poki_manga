import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:poki_manga/core/constants.dart';
import 'package:poki_manga/presentation/screens/library/widgets/header_with_settings.dart';

import 'card_grid.dart';
import 'category_list.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It will provie us total height  and width of our screen
    Size size = MediaQuery.of(context).size;
    // it enable scrolling on small device
    return SingleChildScrollView(
     
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          HeaderWithSettings(),
          CategoryList(),
          SizedBox(height: kDefaultPadding/2),
          CardGrid(),
        ],
      ),
    );
  }
}