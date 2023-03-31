import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:poki_manga/core/constants.dart';

class HeaderWithSettings extends StatelessWidget {
  const HeaderWithSettings({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
         Container(
          height: size.height * 0.02,
          decoration: BoxDecoration(
             color: kPrimaryColor,
          ),  
        ),
        Container(
          height: size.height * 0.03,
          decoration: BoxDecoration(
             color: kBackgroundColor,
            borderRadius: BorderRadius.only(
            topLeft: kDefaultRadius, topRight: kDefaultRadius),
          ),
        ),
      ],
    );

    //     children:
    //   height: size.height * 0.2,
    //   color: kPrimaryColor,
    //    margin: EdgeInsets.only(bottom: 0),
    //     padding: EdgeInsets.only(bottom: 0),
    //   child:
    //    Container(
    //   height: size.height * 0.2,
    //   decoration: BoxDecoration(
    //     color: kBackgroundColor,
    //             borderRadius: BorderRadius.only(topLeft: kDefaultRadius,topRight: kDefaultRadius),
    //   ),
    // )
    // );
  }
}
