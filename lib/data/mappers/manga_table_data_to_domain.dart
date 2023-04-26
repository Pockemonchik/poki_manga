import '../../domain/entities/manga_entity.dart';
import '../db/database.dart';

extension MangaEntityTableDataToDomain on MangaEntityTableData {
  MangaEntity toDomain() {
    return MangaEntity(
    id: id, 
    title: title,
    description: description, 
    image: image, 
    favourite: true,
    genres: ["имба гг", " комедия", "романтика", "школа"],
    chapter_list:  [
      {"title":"1 глава","status": true},
      {"title":"1 глава","status": true},
      {"title":"1 глава","status": true},
      {"title":"1 глава","status": false},
      {"title":"1 глава","status": true},
      {"title":"1 глава","status": false},
    ],
    author: author);
  }
}
