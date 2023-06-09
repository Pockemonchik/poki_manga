import 'package:flutter/material.dart';
import 'package:poki_manga/core/constants.dart';

import '../../../../domain/entities/manga_entity.dart';

class MangaEntityCard extends StatelessWidget {
  const MangaEntityCard({
    super.key,
    required this.itemIndex,
    required this.manga,
    required this.press,
  });

  final int itemIndex;
  final MangaEntity manga;
  final VoidCallback  press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(kDefaultRadius),
          border: Border.all(
            color: kShapeTextColor,
            width: 0.2,
          ),
          color: kBackgroundColor,
          boxShadow: [kDefaultShadow],
        ),
        margin: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: kDefaultRadius, topRight: kDefaultRadius),
              child: Image.asset(manga.image,
                  height: 140, width: double.infinity, fit: BoxFit.cover),
            ),
            Padding(
              padding: const EdgeInsets.all(kDefaultPadding / 2),
              child: Column(
                children: [
                  // ignore: prefer_const_literals_to_create_immutables
                  Row(children: [
                    const Expanded(
                        child:
                            LinearProgressIndicator(value: 0.5, minHeight: 5)),
                    const SizedBox(width: kDefaultPadding / 4),
                    const Text("5/20",
                        style:
                            TextStyle(fontSize: 10.0, color: kShapeTextColor)),
                  ]),
                  const SizedBox(height: kDefaultPadding / 4),
                  SizedBox(
                    height: 30,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Text(manga.title,
                              style: Theme.of(context).textTheme.bodySmall),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
