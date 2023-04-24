import 'package:flutter/material.dart';
import 'package:poki_manga/core/constants.dart';
import 'package:flutter/foundation.dart';
import 'package:poki_manga/presentation/screens/detail_manga/detail_manga_screen.dart';

import '../../../../domain/entities/manga_entity.dart';
import '../../../widgets/slide_left_route.dart';
import 'manga_card.dart';

class CardGrid extends StatefulWidget {
  @override
  _CardGridState createState() => _CardGridState();
}

class _CardGridState extends State<CardGrid> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(
            vertical: kDefaultPadding, horizontal: kDefaultPadding),
        height: 800,
        child: GridView.builder(
          itemCount: mangas.length,

          // ignore: prefer_const_constructors
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              // crossAxisCount: 3,
              childAspectRatio: 0.2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              mainAxisExtent: 230,
              maxCrossAxisExtent: 150),
          itemBuilder: (context, index) => MangaEntityCard(
            press: () {
              Navigator.push(
                context,
                SlideLeftRoute(
                  page: DetailMangaEntityScreen(manga: mangas[index]),
                ),
              );
            },
            itemIndex: index,
            manga: mangas[index],
          ),
        ));
  }
}
