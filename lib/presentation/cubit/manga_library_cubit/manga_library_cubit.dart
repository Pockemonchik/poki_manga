import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poki_manga/data/repositories/manga_repository_impl.dart';
import 'package:poki_manga/domain/repositories/manga_repository.dart';
import '../../../domain/entities/manga_entity.dart';
import '../../../domain/usecases/get_all_manga.dart';
import '../../../domain/usecases/get_favourite_manga.dart';
import '../../../domain/usecases/insert_manga_to_favourites.dart';
import 'manga_library_state.dart';

class MangaLibraryCubit extends Cubit<MangaLibraryState> {
  final GetFavouriteManga getFavouriteManga;

  MangaLibraryCubit({required this.getFavouriteManga})
      : super(MangaLibraryEmptyState());

  Future<void> fetchFavouriteMangaEntity() async {
    //получаем мангу из сети
    try {
      emit(MangaLibraryLoadingState());
      final List<MangaEntity> mangaList = await getFavouriteManga();
      emit(MangaLibraryLoadedState(loadedMangaEntity: mangaList));
    } catch (e) {
      emit(MangaLibraryErrorState());
    }
  }

  Future<void> clearMangaEntity() async {
    emit(MangaLibraryEmptyState());
  }
}
