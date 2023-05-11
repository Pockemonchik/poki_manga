abstract class MangaLibraryState {}

class MangaLibraryEmptyState extends MangaLibraryState {}

class MangaLibraryLoadingState extends MangaLibraryState {}

class MangaLibraryLoadedState extends MangaLibraryState {
  //выбранная категория кладется в loaded
  List<dynamic> loadedMangaEntity;
  List<dynamic> filteredMangaEntity;
  String category;
  MangaLibraryLoadedState({
    required this.loadedMangaEntity, required this.filteredMangaEntity,required this.category,
  });
}

class MangaLibraryErrorState extends MangaLibraryState {}
