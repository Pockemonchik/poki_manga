abstract class MangaState {}

class MangaEmptyState extends MangaState {}

class MangaLoadingState extends MangaState {}

class MangaLoadedState extends MangaState {
  List<dynamic> loadedManga;
  List<dynamic> dbManga;
  MangaLoadedState({required this.loadedManga, required this.dbManga})
      : assert(loadedManga != null);
}

class MangaErrorState extends MangaState {}
