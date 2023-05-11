import 'package:poki_manga/domain/repositories/manga_repository.dart';

import '../entities/manga_entity.dart';

class GetSavedManga {
  final MangaRepository mangaRepository;
  GetSavedManga(this.mangaRepository);

  Future<List<MangaEntity>> call() async {
    return await mangaRepository.getSavedManga();
  }
}

