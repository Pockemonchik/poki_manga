import 'package:poki_manga/domain/repositories/manga_repository.dart';

import '../entities/manga_entity.dart';

class GetAllManga {
  final MangaRepository mangaRepository;
  GetAllManga(this.mangaRepository);

  Future<List<MangaEntity>> call() async {
    return await mangaRepository.getAllManga();
  }
}

