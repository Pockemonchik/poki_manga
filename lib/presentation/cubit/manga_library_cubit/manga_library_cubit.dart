import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poki_manga/data/repositories/manga_repository_impl.dart';
import 'package:poki_manga/domain/repositories/manga_repository.dart';
import '../../../domain/entities/manga_entity.dart';
import '../../../domain/usecases/get_all_manga.dart';
import '../../../domain/usecases/get_saved_manga.dart';
import '../../../domain/usecases/insert_manga_to_favourites.dart';
import 'dart:io';

import 'manga_library_state.dart';

class MangaLibraryCubit extends Cubit<MangaLibraryState> {
  final GetSavedManga getSavedManga;

  MangaLibraryCubit({required this.getSavedManga})
      : super(MangaLibraryEmptyState());

  Future<void> fetchSavedMangaEntity() async {
    //из базы достаем начальная категория reading
    try {
      emit(MangaLibraryLoadingState());
      // sleep(Duration(seconds:1));
      final List<MangaEntity> mangaList = await getSavedManga();
      final List<MangaEntity> filteredMangaList =
          mangaList.where((e) => e.reading == true).toList();
      // картегория Избранное

      emit(MangaLibraryLoadedState(
          loadedMangaEntity: mangaList,
          filteredMangaEntity: filteredMangaList,
          category: 'Читаю'));
    } catch (e) {
      emit(MangaLibraryErrorState());
    }
  }

  Future<void> filterSavedMangaEntity(String category) async {
    //фильтруем по категориям
    try {
      emit(MangaLibraryLoadingState());
      // sleep(Duration(seconds:1));
      final List<MangaEntity> mangaList = await getSavedManga();
      final List<MangaEntity> filteredMangaList;
      switch (category) {
        case 'reading': // Enter this block if mark == 0
          filteredMangaList =
              mangaList.where((e) => e.reading == true).toList();
          break;
        case 'favourite':
          filteredMangaList =
              mangaList.where((e) => e.favourite == true).toList();
          break;
        case 'alreadyRead':
          filteredMangaList =
              mangaList.where((e) => e.alreadyRead == true).toList();
          break;
        default:
          filteredMangaList =
              mangaList.where((e) => e.reading == true).toList();
      }
      emit(MangaLibraryLoadedState(
          loadedMangaEntity: mangaList,
          filteredMangaEntity: filteredMangaList,
          category: category));
    } catch (e) {
      emit(MangaLibraryErrorState());
    }
  }

  Future<void> clearMangaEntity() async {
    emit(MangaLibraryEmptyState());
  }
}
