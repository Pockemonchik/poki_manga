import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poki_manga/presentation/screens/detail_manga/widgets/body.dart';

import '../../../core/constants.dart';
import '../../../domain/entities/manga_entity.dart';
import '../../cubit/detail_manga_cubit/detail_manga_cubit.dart';
import '../../widgets/bottom_nav_bar.dart';

class DetailMangaEntityScreen extends StatelessWidget {
  const DetailMangaEntityScreen({
    super.key,
    required this.manga,
  });

  final MangaEntity manga;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, manga),
      body: Body(manga: manga),
      bottomNavigationBar: BottomNavBar(),
    );
  }

  AppBar buildAppBar(BuildContext context, MangaEntity manga) {
    final DetailMangaCubit mangaCubit = context.read<DetailMangaCubit>();
    return AppBar(
        elevation: 0.0,
        toolbarHeight: kToolbarFixHeight + 10,
        backgroundColor: kPrimaryColor,
        bottomOpacity: 0.0,
        actions: <Widget>[
          IconButton(
            padding: EdgeInsets.only(right: kDefaultPadding),
            icon: const Icon(
              Icons.bookmark_outline,
              color: Colors.white,
              size: 25.0,
            ),
            tooltip: 'Show Snackbar',
            onPressed: () {},
          ),
          IconButton(
            padding: EdgeInsets.only(right: kDefaultPadding),
            icon: const Icon(
              Icons.download,
              color: Colors.white,
              size: 25.0,
            ),
            tooltip: 'Show Snackbar',
            onPressed: () {
              mangaCubit.downloadMangaChapters(manga);
            },
          ),
        ]);
  }
}
