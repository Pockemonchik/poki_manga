import 'dart:io';

import 'package:drift/drift.dart';
import 'package:path_provider/path_provider.dart';
import 'package:poki_manga/data/db/database.dart';
import 'package:poki_manga/data/mappers/manga_model_to_database.dart';
import 'package:poki_manga/data/mappers/manga_table_data_to_domain.dart';
import '../../domain/entities/manga_entity.dart';
import '../../domain/repositories/manga_repository.dart';
import '../datasources/manga_provider.dart';
import 'dart:developer';

class MangaRepositoryImpl implements MangaRepository {
  final MangaEntityProvider _mangaProvider = MangaEntityProvider();
  Future<List<MangaEntity>> getAllMangaEntity() =>
      _mangaProvider.getAllMangaEntity();

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
  Future<List<MangaEntity>> getSavedManga() async {
    List<MangaEntity> mangas = await getAllMangaDB();
    return mangas;
  }

  @override
  Future<void> downloadMangaChapters(MangaEntity manga) async {
    log('download_manga repo impl');
    final path = await _localPath;
    log('local path $path');
    writeFile("test text");
    final dataFromFile = await readFile();
    log('data from file $dataFromFile');
  }

// test work with files
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/counter.txt');
  }

  Future<File> writeFile(String data) async {
    final file = await _localFile;
    // Write the file
    return file.writeAsString(data);
  }

  Future<String> readFile() async {
    try {
      final file = await _localFile;

      // Read the file
      final contents = await file.readAsString();

      return contents;
    } catch (e) {
      // If encountering an error, return 0
      return "err";
    }
  }
}
