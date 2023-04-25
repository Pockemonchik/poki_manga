import '../entities/manga_entity.dart';

abstract class MangaRepository {
  Future<List<MangaEntity>> getAllManga();
  Future<List<MangaEntity>> getFavouriteManga();
  Future<void> insertMangaToFavourites(MangaEntity manga) ;
  Future<void> deleteMangaFromFavourites(MangaEntity manga) ; 

}