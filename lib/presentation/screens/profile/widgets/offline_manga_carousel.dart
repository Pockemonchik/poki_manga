import 'package:flutter/material.dart';
import 'package:poki_manga/core/constants.dart';

class OfflineMangaCarousel extends StatefulWidget {
  const OfflineMangaCarousel({super.key});

  _OfflineMangaCarouselState createState() => _OfflineMangaCarouselState();
}

class _OfflineMangaCarouselState extends State<OfflineMangaCarousel> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: size.height * 0.20,
          decoration: const BoxDecoration(
            color: Colors.green,
          ),
          child: ListView.builder(
            itemCount: 15,
            scrollDirection: Axis.horizontal,

            // ignore: prefer_const_constructors

            itemBuilder: (context, index) => ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: kDefaultRadius, topRight: kDefaultRadius),
              child: Image.asset("assets/images/1.jpg",
                  height: 50, width: 120, fit: BoxFit.cover),
            ),
          ),
        ),
        Container(
          height: size.height * 0.1,
          width: size.width,
          decoration: const BoxDecoration(
            color: kPrimaryColor,
          ),
        ),
      ],
    );
  }
}
