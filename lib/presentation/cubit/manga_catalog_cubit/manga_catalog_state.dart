abstract class MangaCatalogState {
  get loadedMangaCatalog => null;
}

class MangaCatalogEmptyState extends MangaCatalogState {}

class MangaCatalogLoadingState extends MangaCatalogState {}

class MangaCatalogLoadedState extends MangaCatalogState {
  List<dynamic> loadedMangaCatalog;
  MangaCatalogLoadedState({required this.loadedMangaCatalog})
      : assert(loadedMangaCatalog != null);
}

class MangaCatalogErrorState extends MangaCatalogState {}
