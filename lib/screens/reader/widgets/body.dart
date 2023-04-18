import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poki_manga/core/constants.dart';
import 'package:poki_manga/screens/library/widgets/header_with_settings.dart';

import '../../../cubit/manga_cubit.dart';
import '../../../services/manga_repository.dart';

class Body extends StatelessWidget {
  Body({super.key});
  final PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return PageView(
      /// [PageView.scrollDirection] defaults to [Axis.horizontal].
      /// Use [Axis.vertical] to scroll vertically.
      controller: pageController,
      children: <Widget>[
        SingleChildScrollView(
          child: 
          Image.asset("assets/images/page.jpg",
                    fit: BoxFit.fitWidth),
        ),
        SingleChildScrollView(
          child: 
          Image.asset("assets/images/page2.jpg",
                    fit: BoxFit.fitWidth),
        ),
         SingleChildScrollView(
          child: 
          Image.asset("assets/images/page.jpg",
                    fit: BoxFit.fitWidth),
        ),
      ],
    );
  }
}
