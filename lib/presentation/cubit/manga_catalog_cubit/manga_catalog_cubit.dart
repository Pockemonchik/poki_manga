import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poki_manga/presentation/cubit/manga_catalog_cubit/manga_catalog_state.dart';
import '../../../domain/entities/manga_entity.dart';
import '../../../domain/usecases/get_all_manga.dart';
import '../../../domain/usecases/insert_manga_to_favourites.dart';

class MangaCatalogCubit extends Cubit<MangaCatalogState> {
  final GetAllManga getAllManga;
  final InsertMangaToFavourites insertMangaToFavourites;

  MangaCatalogCubit(
      {required this.getAllManga, required this.insertMangaToFavourites})
      : super(MangaCatalogEmptyState());

  Future<void> fetchMangaCatalog() async {
    //получаем мангу из сети
    try {
      emit(MangaCatalogLoadingState());
      log("fetch");
      final List<MangaEntity> mangaList = await getAllManga();
      emit(MangaCatalogLoadedState(loadedMangaCatalog: mangaList));
    } catch (e) {
      emit(MangaCatalogErrorState());
    }
  }

  Future<void> addMangaToFavourites(MangaEntity manga) async {
    // добавляем мангу в избранное
    try {
      List<MangaEntity> newMangaList = state.loadedMangaCatalog;
      for (final item in newMangaList) {
        if (item.title == manga.title) {
          log("chante fave");
          item.favourite = true;
          log("insertMangaToFavourites fave");
          await insertMangaToFavourites(manga);
        }
      }
      emit(MangaCatalogLoadedState(loadedMangaCatalog: newMangaList));
    } catch (e) {
      log(e.toString());
      emit(MangaCatalogErrorState());
    }
  }

  Future<void> clearMangaCatalog() async {
    emit(MangaCatalogEmptyState());
  }
}
