import '../../domain/entities/manga_entity.dart';
import '../db/database.dart';

extension MangaEntityModelToDatabase on MangaEntity {
  MangaEntityTableData toDatabase() {
    return MangaEntityTableData(
        id: id,
        title: title,
        description: description,
        image: image,
        author: author,
        genres: '');
  }
}
