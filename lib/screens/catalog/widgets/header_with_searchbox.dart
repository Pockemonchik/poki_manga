import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:poki_manga/core/constants.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({super.key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
         Container(
          height: size.height * 0.11,
          decoration: const BoxDecoration(
            color: kBackgroundColor,
          ),
        ),
        Container(
          height: size.height * 0.1,
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
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            height: 40,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.all(kDefaultRadius),
                ),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    onChanged: (value) {},
                    decoration: InputDecoration(
                      hintText: "Поиск по каталогу",
                      hintStyle:  Theme.of(context).textTheme.labelMedium,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      suffixIcon: const Icon(
                        Icons.search,
                        color: Colors.black,
                        size: 30.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
