import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poki_manga/data/repositories/manga_repository_impl.dart';
import 'package:poki_manga/domain/repositories/manga_repository.dart';
import 'package:poki_manga/presentation/cubit/manga_state.dart';
import '../../domain/entities/manga_entity.dart';
import '../../domain/usecases/get_all_manga.dart';
import '../../domain/usecases/insert_manga_to_favourites.dart';

class MangaCatalogCubit extends Cubit<MangaEntityState> {
  
  final GetAllManga getAllManga;
  final InsertMangaToFavourites insertMangaToFavourites;
  
  MangaCatalogCubit({required this.getAllManga,required this.insertMangaToFavourites}) : super(MangaEntityEmptyState());
  
  

  Future<void> fetchMangaEntity() async {
    //получаем мангу из сети
    try {
      emit(MangaEntityLoadingState());
      final List<MangaEntity> mangaList = await getAllManga();
      emit(MangaEntityLoadedState(loadedMangaEntity: mangaList));
    }
    catch (e) {
      emit(MangaEntityErrorState());
    }
  }

  Future<void> addMangaToFavourites(MangaEntity manga) async {
    //получаем мангу из сети
    try {
      await  insertMangaToFavourites(manga);
    }
    catch (e) {
      emit(MangaEntityErrorState());
    }
  }

  Future<void> clearMangaEntity() async {
    emit(MangaEntityEmptyState());
  }

}