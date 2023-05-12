import 'package:poki_manga/domain/repositories/manga_repository.dart';

import '../entities/manga_entity.dart';

class DownloadMangaChapters {
  final MangaRepository mangaRepository;
  DownloadMangaChapters(this.mangaRepository);

  Future<void> call(MangaEntity manga) async {
    await mangaRepository.downloadMangaChapters(manga);
  }
}

