import 'package:flutter/material.dart';
import 'package:poki_manga/core/constants.dart';

import '../../../../domain/entities/manga.dart';

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
      height: 350,
      width: size.width,
      margin: const EdgeInsets.only(
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding / 2,
          left: kDefaultPadding,
          right: kDefaultPadding / 2),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(kDefaultRadius),
        // color: Color.fromARGB(255, 30, 194, 131),
        // boxShadow: [BoxShadow(blurRadius: 3, color: kPrimaryColorWithOpasity),
        // ],
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
                  height: 250,
                  width: 170,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: kDefaultPadding / 2),
                        Text(
                          manga.title,
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                        ),
                        const SizedBox(height: kDefaultPadding * 3),
                        Text(manga.author,
                            style: Theme.of(context).textTheme.bodyMedium),
                        const SizedBox(height: kDefaultPadding / 2),
                        Row(
                          children: [
                            const Icon(
                              Icons.star_half,
                              color: kButtonColor,
                              size: 12.0,
                            ),
                            Text(" 4.5",
                                style: Theme.of(context).textTheme.bodySmall),
                          ],
                        ),
                        const SizedBox(height: kDefaultPadding / 2),
                        Row(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(7)),
                                color: Color.fromARGB(255, 228, 169, 208),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 3,
                                      color: kPrimaryColorWithOpasity)
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: kDefaultPadding / 4,
                                    bottom: kDefaultPadding / 4,
                                    right: kDefaultPadding / 4,
                                    left: kDefaultPadding / 4),
                                child: Text(
                                  "Романтика",
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelSmall
                                      ?.merge(TextStyle(
                                        color:
                                            Color.fromARGB(255, 209, 48, 156),
                                      )),
                                ),
                              ),
                            ),
                            const SizedBox(width: kDefaultPadding / 2),
                            Container(
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(7)),
                                color: Color.fromARGB(255, 138, 187, 228),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 3,
                                      color: kPrimaryColorWithOpasity)
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: kDefaultPadding / 4,
                                    bottom: kDefaultPadding / 4,
                                    right: kDefaultPadding / 4,
                                    left: kDefaultPadding / 4),
                                child: Text(
                                  "комедия",
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelSmall
                                      ?.merge(TextStyle(
                                        color: Color.fromARGB(255, 10, 99, 172),
                                      )),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: kDefaultPadding / 2),
                        Row(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(7)),
                                color: Color.fromARGB(255, 158, 236, 164),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 3,
                                      color: kPrimaryColorWithOpasity)
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: kDefaultPadding / 4,
                                    bottom: kDefaultPadding / 4,
                                    right: kDefaultPadding / 4,
                                    left: kDefaultPadding / 4),
                                child: Text(
                                  "Супер сила",
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelSmall
                                      ?.merge(TextStyle(
                                        color: Color.fromARGB(255, 46, 194, 58),
                                      )),
                                ),
                              ),
                            ),
                            const SizedBox(width: kDefaultPadding / 2),
                            Container(
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(7)),
                                color: Color.fromARGB(255, 177, 214, 107),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 3,
                                      color: kPrimaryColorWithOpasity)
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: kDefaultPadding / 4,
                                    bottom: kDefaultPadding / 4,
                                    right: kDefaultPadding / 4,
                                    left: kDefaultPadding / 4),
                                child: Text(
                                  "Имба гг",
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelSmall
                                      ?.merge(TextStyle(
                                        color: Color.fromARGB(255, 108, 119, 4),
                                      )),
                                ),
                              ),
                            ),
                          ],
                        ),
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
