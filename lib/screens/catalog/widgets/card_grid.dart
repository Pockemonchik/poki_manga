import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poki_manga/core/constants.dart';
import 'package:poki_manga/services/manga_repository.dart';

import '../../../cubit/manga_cubit.dart';
import '../../../cubit/manga_state.dart';
import '../../../widgets/slide_left_route.dart';
import '../../detail_manga/detail_manga_screen.dart';
import 'manga_card.dart';

class CardGrid extends StatefulWidget {
  @override
  _CardGridState createState() => _CardGridState();
}

class _CardGridState extends State<CardGrid> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    // final MangaCubit mangaCubit = context.read<MangaCubit>();
    Size size = MediaQuery.of(context).size;
    final MangaCubit mangaCubit = context.read<MangaCubit>();
    return BlocBuilder<MangaCubit, MangaState>(
      builder: (context, state) {
        if (state is MangaEmptyState) {
          return Center(
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: kButtonColor,
              ),
              child: const Text("загрузить мангу"),
              onPressed: () {
                mangaCubit.fetchManga();
              },
            ),
          );
        }
        if (state is MangaLoadingState) {
          return const Center(
            child: Text("loading ..."),
          );
        }
        if (state is MangaLoadedState) {
          return Container(
            margin: const EdgeInsets.symmetric(
                vertical: kDefaultPadding, horizontal: kDefaultPadding),
            height: size.height * 0.6,
            child: GridView.builder(
              itemCount: state.loadedManga.length,

              // ignore: prefer_const_constructors
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                crossAxisSpacing: 10,
                mainAxisSpacing: kDefaultPadding,
                mainAxisExtent: 140,
                maxCrossAxisExtent: 600,
              ),
              itemBuilder: (context, index) => MangaCard(
                
                itemIndex: index,
                manga: state.loadedManga[index],
              ),
            ),
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}
