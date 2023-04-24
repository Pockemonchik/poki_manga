import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poki_manga/data/repositories/manga_repository_impl.dart';
import 'package:poki_manga/domain/repositories/manga_repository.dart';
import 'package:poki_manga/presentation/cubit/manga_state.dart';
import '../../domain/entities/manga_entity.dart';
import '../../domain/usecases/get_all_manga.dart';

class MangaCatalogCubit extends Cubit<MangaEntityState> {
  
  final GetAllManga getAllManga;
  
  MangaCatalogCubit({required this.getAllManga}) : super(MangaEntityEmptyState());
  
  

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

  Future<void> clearMangaEntity() async {
    emit(MangaEntityEmptyState());
  }

}