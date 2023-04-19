import '../../models/manga.dart';
import '../db/database.dart';

extension MangaTableDataToDomain on MangaTableData {
  Manga toDomain() {
    return Manga(
    id: id, 
    title: title,
    description: description, 
    image: image, 
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
