import '../entities/manga_entity.dart';

abstract class MangaRepository {
  Future<List<MangaEntity>> getAllManga();
  Future<List<MangaEntity>> getSavedManga();
  Future<void> insertMangaToFavourites(MangaEntity manga) ;
  Future<void> deleteMangaFromFavourites(MangaEntity manga) ; 

}