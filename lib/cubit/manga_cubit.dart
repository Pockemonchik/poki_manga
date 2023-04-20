import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poki_manga/cubit/manga_state.dart';
import '../data/repositories/repository.dart';
import '../models/manga.dart';

class MangaCubit extends Cubit<MangaState> {
  final MangaRepository mangaRepository;
  
  MangaCubit( this.mangaRepository) : super(MangaEmptyState());


  Future<void> fetchManga() async {
    //получаем мангу из сети
    try {
      emit(MangaLoadingState());
      final List<Manga> mangaList = await mangaRepository.getAllManga();
      final List<Manga> mangaListDB = await mangaRepository.getAllMangaDB();
      log('mangaListDB data:' + mangaListDB.toString());
      emit(MangaLoadedState(loadedManga: mangaList, dbManga: mangaListDB,));
    }
    catch (e) {
      emit(MangaErrorState());
    }
  }

  Future<void> clearManga() async {
    emit(MangaEmptyState());
  }

}