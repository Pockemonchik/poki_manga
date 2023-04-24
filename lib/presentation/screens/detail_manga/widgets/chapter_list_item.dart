import 'package:flutter/material.dart';
import 'package:poki_manga/core/constants.dart';
import 'package:flutter/foundation.dart';
import 'package:poki_manga/presentation/screens/detail_manga/detail_manga_screen.dart';

import '../../../../domain/entities/manga_entity.dart';
import '../../../widgets/slide_left_route.dart';
import '../../reader/reader_screen.dart';
import 'manga_card.dart';

class ChapterListItem extends StatelessWidget {
  ChapterListItem({
    super.key,
    required this.title,
    required this.status,
  });

  final String title;
  final bool status;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          SlideLeftRoute(
            page: ReaderScreen(),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(
            left: kDefaultPadding,
            right: kDefaultPadding,
            top: kDefaultPadding / 2,
            bottom: kDefaultPadding / 2),
        child: Row(
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.labelLarge?.merge(
                    const TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
            ),
            SizedBox(width: size.width * 0.5),
            status
                ? const Icon(
                    Icons.visibility,
                    color: kPrimaryColor,
                    size: 18.0,
                  )
                : const Icon(
                    Icons.visibility_off,
                    color: kTextColor,
                    size: 18.0,
                  ),
          ],
        ),
      ),
    );
  }
}
