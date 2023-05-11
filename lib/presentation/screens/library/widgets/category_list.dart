import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poki_manga/core/constants.dart';
import '../../../cubit/manga_library_cubit/manga_library_cubit.dart';
import '../../../cubit/manga_library_cubit/manga_library_state.dart';

class CategoryList extends StatefulWidget {
  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int selectedIndex = 0;
  List categories = ['Читаю', 'Избранное', 'Прочитанное'];

  @override
  Widget build(BuildContext context) {
    final MangaLibraryCubit mangaCubit = context.read<MangaLibraryCubit>();
    return Container(
      height: 25,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: categories.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            switch (categories[index]) {
              case 'Читаю':
                mangaCubit.filterSavedMangaEntity('reading');
                break;
              case 'Избранное':
               mangaCubit.filterSavedMangaEntity('favourite');
                break;
              case 'Прочитанное':
                mangaCubit.filterSavedMangaEntity('alreadyRead');
                break;
            }
            setState(() {
              selectedIndex = index;
            });
          },
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(
              left: kDefaultPadding,
              // At end item it add extra 20 right  padding
              right: index == categories.length - 1 ? kDefaultPadding : 0,
            ),
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            decoration: BoxDecoration(
              color: index == selectedIndex ? kButtonColor : kBackgroundColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Text(
              categories[index],
              style: TextStyle(fontSize: 12.0, color: kShapeTextColor),
            ),
          ),
        ),
      ),
    );
  }
}
