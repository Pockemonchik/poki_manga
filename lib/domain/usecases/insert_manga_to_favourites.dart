import 'package:poki_manga/domain/repositories/manga_repository.dart';

import '../entities/manga_entity.dart';

class InsertMangaToFavourites {
  final MangaRepository mangaRepository;

  InsertMangaToFavourites(this.mangaRepository);

  Future<void> call(MangaEntity manga) async {
    return await mangaRepository.insertMangaToFavourites(manga);
  }
}

