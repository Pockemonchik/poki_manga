import '../models/manga.dart';
import 'manga_provider.dart';

class MangaRepository {
  final MangaProvider _mangaProvider = MangaProvider();
  Future <List<Manga>> getAllManga() => _mangaProvider.getAllManga();
}