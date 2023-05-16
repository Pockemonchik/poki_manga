import 'package:flutter/material.dart';
import 'package:poki_manga/core/constants.dart';

class HeaderWithSettings extends StatelessWidget {
  const HeaderWithSettings({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
         Container(
          height: size.height * 0.19,
          decoration: const BoxDecoration(
            color: kBackgroundColor,
          ),
        ),
        Container(
          height: size.height * 0.18,
          decoration: const BoxDecoration(
            color: kPrimaryColor,
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: size.height * 0.03,
            decoration: const BoxDecoration(
              color: kBackgroundColor,
              borderRadius: BorderRadius.only(
                  topLeft: kDefaultRadius, topRight: kDefaultRadius),
            ),
          ),
        ),
        
      ],
    );
  }
}
