import '../../models/manga.dart';
import '../db/database.dart';

extension MangaModelToDatabase on Manga {
  MangaTableData toDatabase() {
    return MangaTableData(
        id: id,
        title: title,
        description: description,
        image: image,
        author: author,
        genres: '');
  }
}
