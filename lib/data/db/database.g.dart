// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $MangaTableTable extends MangaTable
    with TableInfo<$MangaTableTable, MangaTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MangaTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _authorMeta = const VerificationMeta('author');
  @override
  late final GeneratedColumn<String> author = GeneratedColumn<String>(
      'author', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _imageMeta = const VerificationMeta('image');
  @override
  late final GeneratedColumn<String> image = GeneratedColumn<String>(
      'image', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _genresMeta = const VerificationMeta('genres');
  @override
  late final GeneratedColumn<String> genres = GeneratedColumn<String>(
      'genres', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, title, author, image, description, genres];
  @override
  String get aliasedName => _alias ?? 'manga_table';
  @override
  String get actualTableName => 'manga_table';
  @override
  VerificationContext validateIntegrity(Insertable<MangaTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('author')) {
      context.handle(_authorMeta,
          author.isAcceptableOrUnknown(data['author']!, _authorMeta));
    } else if (isInserting) {
      context.missing(_authorMeta);
    }
    if (data.containsKey('image')) {
      context.handle(
          _imageMeta, image.isAcceptableOrUnknown(data['image']!, _imageMeta));
    } else if (isInserting) {
      context.missing(_imageMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('genres')) {
      context.handle(_genresMeta,
          genres.isAcceptableOrUnknown(data['genres']!, _genresMeta));
    } else if (isInserting) {
      context.missing(_genresMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MangaTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MangaTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      author: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}author'])!,
      image: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}image'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description'])!,
      genres: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}genres'])!,
    );
  }

  @override
  $MangaTableTable createAlias(String alias) {
    return $MangaTableTable(attachedDatabase, alias);
  }
}

class MangaTableData extends DataClass implements Insertable<MangaTableData> {
  final int id;
  final String title;
  final String author;
  final String image;
  final String description;
  final String genres;
  const MangaTableData(
      {required this.id,
      required this.title,
      required this.author,
      required this.image,
      required this.description,
      required this.genres});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    map['author'] = Variable<String>(author);
    map['image'] = Variable<String>(image);
    map['description'] = Variable<String>(description);
    map['genres'] = Variable<String>(genres);
    return map;
  }

  MangaTableCompanion toCompanion(bool nullToAbsent) {
    return MangaTableCompanion(
      id: Value(id),
      title: Value(title),
      author: Value(author),
      image: Value(image),
      description: Value(description),
      genres: Value(genres),
    );
  }

  factory MangaTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MangaTableData(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      author: serializer.fromJson<String>(json['author']),
      image: serializer.fromJson<String>(json['image']),
      description: serializer.fromJson<String>(json['description']),
      genres: serializer.fromJson<String>(json['genres']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'author': serializer.toJson<String>(author),
      'image': serializer.toJson<String>(image),
      'description': serializer.toJson<String>(description),
      'genres': serializer.toJson<String>(genres),
    };
  }

  MangaTableData copyWith(
          {int? id,
          String? title,
          String? author,
          String? image,
          String? description,
          String? genres}) =>
      MangaTableData(
        id: id ?? this.id,
        title: title ?? this.title,
        author: author ?? this.author,
        image: image ?? this.image,
        description: description ?? this.description,
        genres: genres ?? this.genres,
      );
  @override
  String toString() {
    return (StringBuffer('MangaTableData(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('author: $author, ')
          ..write('image: $image, ')
          ..write('description: $description, ')
          ..write('genres: $genres')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, title, author, image, description, genres);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MangaTableData &&
          other.id == this.id &&
          other.title == this.title &&
          other.author == this.author &&
          other.image == this.image &&
          other.description == this.description &&
          other.genres == this.genres);
}

class MangaTableCompanion extends UpdateCompanion<MangaTableData> {
  final Value<int> id;
  final Value<String> title;
  final Value<String> author;
  final Value<String> image;
  final Value<String> description;
  final Value<String> genres;
  const MangaTableCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.author = const Value.absent(),
    this.image = const Value.absent(),
    this.description = const Value.absent(),
    this.genres = const Value.absent(),
  });
  MangaTableCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    required String author,
    required String image,
    required String description,
    required String genres,
  })  : title = Value(title),
        author = Value(author),
        image = Value(image),
        description = Value(description),
        genres = Value(genres);
  static Insertable<MangaTableData> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<String>? author,
    Expression<String>? image,
    Expression<String>? description,
    Expression<String>? genres,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (author != null) 'author': author,
      if (image != null) 'image': image,
      if (description != null) 'description': description,
      if (genres != null) 'genres': genres,
    });
  }

  MangaTableCompanion copyWith(
      {Value<int>? id,
      Value<String>? title,
      Value<String>? author,
      Value<String>? image,
      Value<String>? description,
      Value<String>? genres}) {
    return MangaTableCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      author: author ?? this.author,
      image: image ?? this.image,
      description: description ?? this.description,
      genres: genres ?? this.genres,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (author.present) {
      map['author'] = Variable<String>(author.value);
    }
    if (image.present) {
      map['image'] = Variable<String>(image.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (genres.present) {
      map['genres'] = Variable<String>(genres.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MangaTableCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('author: $author, ')
          ..write('image: $image, ')
          ..write('description: $description, ')
          ..write('genres: $genres')
          ..write(')'))
        .toString();
  }
}

abstract class _$Database extends GeneratedDatabase {
  _$Database(QueryExecutor e) : super(e);
  late final $MangaTableTable mangaTable = $MangaTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [mangaTable];
}
