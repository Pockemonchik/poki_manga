import 'package:flutter/material.dart';


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
