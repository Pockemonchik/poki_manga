import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:poki_manga/core/constants.dart';

import 'category_list.dart';
import 'header_with_searchbox.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It will provie us total height  and width of our screen
    Size size = MediaQuery.of(context).size;
    // it enable scrolling on small device
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HeaderWithSearchBox(),
          SizedBox(height: kDefaultPadding),
          CategoryList(),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}