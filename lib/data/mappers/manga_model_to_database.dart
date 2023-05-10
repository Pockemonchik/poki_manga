import '../../domain/entities/manga_entity.dart';
import '../db/database.dart';

extension MangaEntityModelToDatabase on MangaEntity {
  MangaTableData toDatabase() {
    return MangaTableData(
        id: id,
        title: title,
        description: description,
        image: image,
        author: author,
        favourite: favourite,
        reading: reading,
        alreadyRead: alreadyRead,
        genres: '');
  }
}
