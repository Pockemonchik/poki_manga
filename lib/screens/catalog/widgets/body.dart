import 'package:flutter/material.dart';
import 'package:poki_manga/core/constants.dart';
import 'card_grid.dart';
import 'category_list.dart';
import 'header_with_searchbox.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const HeaderWithSearchBox(),
            CategoryList(),
            const SizedBox(height: kDefaultPadding / 2),
            CardGrid(),
          ],
        ),
    );
  }
}
