import 'package:drift/drift.dart';
import 'package:poki_manga/data/db/database.dart';
import 'package:poki_manga/data/mappers/manga_model_to_database.dart';
import 'package:poki_manga/data/mappers/manga_table_data_to_domain.dart';
import '../../domain/entities/manga.dart';
import '../datasources/manga_provider.dart';

class MangaRepository {
  
  final MangaProvider _mangaProvider = MangaProvider();
  Future<List<Manga>> getAllManga() => _mangaProvider.getAllManga();

  final Database _db = Database();

  Future<List<Manga>> getAllMangaDB() async {
    // получаем всю закеширвоанную мангу
    List<MangaTableData> mangasDB = await _db.select(_db.mangaTable).get();
    return mangasDB
        .map((MangaTableData mangaTableData) => mangaTableData.toDomain())
        .toList();
  }

  Future<void> insertMangaDB(Manga manga) async {
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

  Stream<List<Manga>> onChangeMangaDB() {
    return (_db.select(_db.mangaTable))
        .map((MangaTableData mangaTableData) => mangaTableData.toDomain())
        .watch();
  }
}
