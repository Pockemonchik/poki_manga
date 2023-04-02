import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poki_manga/core/constants.dart';
import 'package:poki_manga/screens/library/widgets/header_with_settings.dart';

import '../../../cubit/manga_cubit.dart';
import '../../../services/manga_repository.dart';
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
