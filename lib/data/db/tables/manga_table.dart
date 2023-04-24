import 'package:drift/drift.dart';

class MangaEntityTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text()();
  TextColumn get author => text()();
  TextColumn get image => text()();
  TextColumn get description => text()();
  TextColumn get genres => text()();
}
