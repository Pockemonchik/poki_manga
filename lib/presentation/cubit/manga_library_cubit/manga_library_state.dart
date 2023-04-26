abstract class MangaLibraryState {}

class MangaLibraryEmptyState extends MangaLibraryState {}

class  MangaLibraryLoadingState extends MangaLibraryState {}

class  MangaLibraryLoadedState extends MangaLibraryState {
  List<dynamic> loadedMangaEntity;
  MangaLibraryLoadedState({required this.loadedMangaEntity})
      : assert(loadedMangaEntity != null);
}

class MangaLibraryErrorState extends MangaLibraryState {}
