import 'package:drift/drift.dart';
import 'package:poki_manga/data/db/database.dart';
import 'package:poki_manga/data/mappers/manga_model_to_database.dart';
import 'package:poki_manga/data/mappers/manga_table_data_to_domain.dart';
import '../../domain/entities/manga_entity.dart';
import '../../domain/repositories/manga_repository.dart';
import '../datasources/manga_provider.dart';
import 'dart:developer';


class MangaRepositoryImpl implements MangaRepository{
  
  final MangaEntityProvider _mangaProvider = MangaEntityProvider();
  Future<List<MangaEntity>> getAllMangaEntity() => _mangaProvider.getAllMangaEntity();

  final Database _db = Database();

  Future<List<MangaEntity>> getAllMangaDB() async {
    // получаем всю закеширвоанную мангу
    List<MangaTableData> mangasDB = await _db.select(_db.mangaTable).get();
    return mangasDB
        .map((MangaTableData mangaTableData) => mangaTableData.toDomain())
        .toList();
  }

  Future<void> insertMangaDB(MangaEntity manga) async {
    // добавляем мангу в дб
    await _db.into(_db.mangaTable).insert(
          manga.toDatabase(),
          mode: InsertMode.insertOrReplace,
        );
  }

  Future<void> deleteMangaDB(int id) async {
    // удаляем мангу из дб
    await (_db.delete(_db.mangaTable)
          ..where((mangaTable) => mangaTable.id.equals(id)))
        .go();
  }

  Stream<List<MangaEntity>> onChangeMangaEntityDB() {
    return (_db.select(_db.mangaTable))
        .map((MangaTableData mangaTableData) => mangaTableData.toDomain())
        .watch();
  }


  
  @override
  Future<void> deleteMangaFromFavourites(MangaEntity manga) {
    // TODO: implement deleteMangaFromFavourites
    throw UnimplementedError();
  }
  
  @override
  Future<List<MangaEntity>> getAllManga() async {
    // TODO: implement getAllManga
    return mangas;
  }
  
  @override
  Future<void> insertMangaToFavourites(MangaEntity manga) async {
    log('insert_manga');
    await insertMangaDB(manga);

  }
  
  @override
  Future<List<MangaEntity>> getFavouriteManga() async {
    List<MangaEntity> mangas = await getAllMangaDB();
    return mangas;
  }
}
