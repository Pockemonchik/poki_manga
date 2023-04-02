import 'package:flutter/material.dart';
import 'package:poki_manga/core/constants.dart';

import '../../../models/manga.dart';

class MangaCard extends StatelessWidget {
  const MangaCard({
    super.key,
    required this.manga,
  });

  final Manga manga;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      // height: size.height * 0.2,
      width: size.width * 0.95,
      margin: const EdgeInsets.only(
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding / 2,
          left: kDefaultPadding / 2,
          right: kDefaultPadding / 2),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(kDefaultRadius),
        color: kButtonColor,
        boxShadow: [BoxShadow(blurRadius: 3, color: kPrimaryColorWithOpasity)],
      ),
      child: Row(
        children: [
          Column(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(kDefaultRadius),
                child: Image.asset(manga.image,
                    height: 230, width: 150, fit: BoxFit.cover),
              ),
              SizedBox(
                height: 30,
                width: 150,
                child: Row(children: [
                  Expanded(
                    child: LinearProgressIndicator(value: 0.5, minHeight: 5),
                  ),
                  const SizedBox(width: kDefaultPadding / 4),
                  const Text("30 %",
                      style: TextStyle(fontSize: 10.0, color: kShapeTextColor)),
                ]),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: kDefaultPadding,
                bottom: kDefaultPadding,
                right: kDefaultPadding,
                left: kDefaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 200,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(manga.title,
                            style: TextStyle(fontSize: 22.0, color: Colors.white),),
                        const SizedBox(height: kDefaultPadding ),
                        Text(manga.description,
                            style: Theme.of(context).textTheme.labelSmall),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: kDefaultPadding),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
