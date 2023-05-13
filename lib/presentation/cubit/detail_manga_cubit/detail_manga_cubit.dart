import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poki_manga/domain/usecases/download_manga_chapters.dart';
import '../../../domain/entities/manga_entity.dart';
import '../../../domain/usecases/insert_manga_to_favourites.dart';
import 'detail_manga_state.dart';

class DetailMangaCubit extends Cubit<DetailMangaState> {
  final DownloadMangaChapters downloadMangaChapters;
  final InsertMangaToFavourites insertMangaToFavourites; 

  DetailMangaCubit(
      {required this.downloadMangaChapters,
      required this.insertMangaToFavourites})
      : super(DetailMangaEmptyState());

  Future<void> downladMangaChapters(MangaEntity manga) async {
    // Загружаем все главы манги
    try {
      log("download in cubit");
    } catch (e) {
      log(e.toString());
    }
  }

  Future<void> addMangaToFavourites(MangaEntity manga) async {
    // добавляем мангу в избранное
    try {
      MangaEntity currentManga = state.manga;
      if (currentManga.favourite == false) {
        await insertMangaToFavourites(manga);
        currentManga.favourite = true;
        emit(DetailMangaLoadedState(manga: currentManga));
      }
    } catch (e) {
      log(e.toString());
      emit(DetailMangaErrorState());
    }
  }
}
