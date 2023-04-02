abstract class MangaState {}

class MangaEmptyState extends MangaState {}

class MangaLoadingState extends MangaState {}

class MangaLoadedState extends MangaState {
  List <dynamic> loadedManga;
  MangaLoadedState({required this.loadedManga}) : assert(loadedManga != null);
}

class MangaErrorState extends MangaState {}
