import 'package:poki_manga/domain/entities/manga_entity.dart';

abstract class DetailMangaState {
  get manga => null;
}

class DetailMangaEmptyState extends DetailMangaState {}

class DetailMangaSLoadingState extends DetailMangaState {}

class DetailMangaLoadedState extends DetailMangaState {
  MangaEntity manga;
  DetailMangaLoadedState({required this.manga}); 
}

class DetailMangaErrorState extends DetailMangaState {}
