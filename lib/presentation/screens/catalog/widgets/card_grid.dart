import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poki_manga/core/constants.dart';
import '../../../cubit/manga_catalog_cubit.dart';
import '../../../cubit/manga_state.dart';
import 'manga_card.dart';

class CardGrid extends StatefulWidget {
  @override
  _CardGridState createState() => _CardGridState();
}

class _CardGridState extends State<CardGrid> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    // final MangaEntityCubit mangaCubit = context.read<MangaEntityCubit>();
    Size size = MediaQuery.of(context).size;
    final MangaCatalogCubit mangaCubit = context.read<MangaCatalogCubit>();
    return BlocBuilder<MangaCatalogCubit, MangaEntityState>(
      builder: (context, state) {
        if (state is MangaEntityEmptyState) {
          return Center(
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: kButtonColor,
              ),
              child: const Text("загрузить мангу"),
              onPressed: () {
                mangaCubit.fetchMangaEntity();
              },
            ),
          );
        }
        if (state is MangaEntityLoadingState) {
          return const Center(
            child: Text("loading ..."),
          );
        }
        if (state is MangaEntityLoadedState) {
          return Container(
            margin: const EdgeInsets.symmetric(
                vertical: kDefaultPadding, horizontal: kDefaultPadding),
            height: size.height * 0.6,
            child: GridView.builder(
              itemCount: state.loadedMangaEntity.length,

              // ignore: prefer_const_constructors
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                crossAxisSpacing: 10,
                mainAxisSpacing: kDefaultPadding,
                mainAxisExtent: 140,
                maxCrossAxisExtent: 600,
              ),
              itemBuilder: (context, index) => MangaEntityCard(
                
                itemIndex: index,
                manga: state.loadedMangaEntity[index],
              ),
            ),
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
