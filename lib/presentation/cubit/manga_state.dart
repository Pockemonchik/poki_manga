abstract class MangaEntityState {}

class MangaEntityEmptyState extends MangaEntityState {}

class MangaEntityLoadingState extends MangaEntityState {}

class MangaEntityLoadedState extends MangaEntityState {
  List<dynamic> loadedMangaEntity;
  MangaEntityLoadedState({required this.loadedMangaEntity})
      : assert(loadedMangaEntity != null);
}

class MangaEntityErrorState extends MangaEntityState {}
