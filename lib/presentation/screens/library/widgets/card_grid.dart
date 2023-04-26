import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poki_manga/core/constants.dart';
import 'package:flutter/foundation.dart';
import 'package:poki_manga/presentation/screens/detail_manga/detail_manga_screen.dart';

import '../../../../domain/entities/manga_entity.dart';
import '../../../cubit/manga_library_cubit/manga_library_cubit.dart';
import '../../../cubit/manga_library_cubit/manga_library_state.dart';
import '../../../cubit/manga_catalog_cubit/manga_catalog_state.dart';
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

    final MangaLibraryCubit mangaCubit = context.read<MangaLibraryCubit>();
    return BlocBuilder<MangaLibraryCubit, MangaLibraryState>(
      builder: (context, state) {
        if (state is MangaLibraryEmptyState) {
          return Center(
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: kButtonColor,
              ),
              child: const Text("загрузить мангу"),
              onPressed: () {
                mangaCubit.fetchFavouriteMangaEntity();
              },
            ),
          );
        }
        if (state is MangaLibraryLoadingState) {
          return const Center(
            child: Text("loading ..."),
          );
        }
        if (state is MangaLibraryLoadedState) {
          return Container(
        margin: const EdgeInsets.symmetric(
            vertical: kDefaultPadding, horizontal: kDefaultPadding),
        height: 800,
        child: GridView.builder(
          itemCount: state.loadedMangaEntity.length,

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
                  page: DetailMangaEntityScreen(manga: state.loadedMangaEntity[index]),
                ),
              );
            },
            itemIndex: index,
            manga:state.loadedMangaEntity[index],
          ),
        ));
        }
        return const SizedBox.shrink();
      },
    );
    
  }
}
