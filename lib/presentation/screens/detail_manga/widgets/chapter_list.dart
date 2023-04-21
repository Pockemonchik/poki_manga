import 'package:flutter/material.dart';
import 'package:poki_manga/core/constants.dart';
import 'package:flutter/foundation.dart';
import 'package:poki_manga/presentation/screens/detail_manga/detail_manga_screen.dart';

import '../../../../domain/entities/manga.dart';
import '../../../widgets/slide_left_route.dart';
import '../../reader/reader_screen.dart';
import 'chapter_list_item.dart';
import 'manga_card.dart';

class ChapterList extends StatefulWidget {
  const ChapterList({
    super.key,
    required this.chapter_list,
  });

  final List<Map> chapter_list;
  @override
  _ChapterListState createState() => _ChapterListState();
}

class _ChapterListState extends State<ChapterList> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
          vertical: kDefaultPadding, horizontal: kDefaultPadding),
      height: 800,
      child: ListView.builder(
        itemCount: widget.chapter_list.length,

        // ignore: prefer_const_constructors

        itemBuilder: (context, index) => ChapterListItem(
          title: widget.chapter_list[index]["title"],
          status: widget.chapter_list[index]["status"],
        ),
      ),
    );
  }
}
