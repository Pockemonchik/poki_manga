import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poki_manga/cubit/manga_state.dart';
import 'package:poki_manga/services/manga_repository.dart';

import '../models/manga.dart';

class MangaCubit extends Cubit<MangaState> {
  final MangaRepository mangaRepository;
  
  MangaCubit( this.mangaRepository) : super(MangaEmptyState());

  Future<void> fetchManga() async {
    try {
      emit(MangaLoadingState());
      final List<Manga> mangaList = await mangaRepository.getAllManga();
      emit(MangaLoadedState(loadedManga: mangaList));
    }
    catch (e) {
      emit(MangaErrorState());
    }
  }

  Future<void> clearManga() async {
    emit(MangaEmptyState());
  }

}