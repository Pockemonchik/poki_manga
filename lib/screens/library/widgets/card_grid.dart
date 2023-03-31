import 'package:flutter/material.dart';
import 'package:poki_manga/core/constants.dart';

import '../../../models/manga.dart';
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
        margin: const EdgeInsets.symmetric(vertical: kDefaultPadding,horizontal: kDefaultPadding),
        height: 800,
        child: GridView.builder(
          itemCount: mangas.length,
          
          // ignore: prefer_const_constructors
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              mainAxisExtent: 230),
          itemBuilder: (context, index) => MangaCard(
            itemIndex: index,
            manga: mangas[index],
          ),
        ));
  }
}
