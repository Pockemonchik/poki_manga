import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poki_manga/core/constants.dart';

import '../../../../domain/entities/manga_entity.dart';
import '../../../cubit/manga_catalog_cubit.dart';
import '../../../cubit/manga_state.dart';
import '../../../widgets/slide_left_route.dart';
import '../../detail_manga/detail_manga_screen.dart';

class MangaEntityCard extends StatelessWidget {
  const MangaEntityCard({
    super.key,
    required this.itemIndex,
    required this.manga,
  });

  final int itemIndex;
  final MangaEntity manga;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final MangaCatalogCubit mangaCubit = context.read<MangaCatalogCubit>();
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(
              bottom: kDefaultPadding / 5,
              left: kDefaultPadding / 5,
              right: kDefaultPadding / 5),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(kDefaultRadius),
            color: kBackgroundColor,
            boxShadow: [
              BoxShadow(blurRadius: 3, color: kPrimaryColorWithOpasity)
            ],
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(kDefaultRadius),
                child: Image.asset(manga.image,
                    height: 170, width: 125, fit: BoxFit.cover),
              ),
              Expanded(
                child: Padding(
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
                        height: 50,
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(manga.title,
                                  style:
                                      Theme.of(context).textTheme.bodyMedium),
                              const SizedBox(height: kDefaultPadding / 2),
                              Text(manga.description,
                                  style:
                                      Theme.of(context).textTheme.labelSmall),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: kDefaultPadding),
                      SizedBox(
                        height: 25,
                        width: 90,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: kButtonColor,
                          ),
                          child: Text("Читать",
                              style: Theme.of(context).textTheme.labelSmall),
                          onPressed: () {
                            Navigator.push(
                              context,
                              SlideLeftRoute(
                                page: DetailMangaEntityScreen(manga: manga),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: -10,
          right: 10,
          child: IconButton(
            icon: const Icon(
              Icons.bookmark,
              color: Colors.red,
              size: 25.0,
            ),
            tooltip: 'Добавить в закладки',
            onPressed:  () async =>  {
              await mangaCubit.insertMangaToFavourites(manga)
              },
          ),
        ),
      ],
    );
  }
}
