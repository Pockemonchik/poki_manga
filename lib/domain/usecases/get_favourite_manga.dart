import 'package:poki_manga/domain/repositories/manga_repository.dart';

import '../entities/manga_entity.dart';

class GetFavouriteManga {
  final MangaRepository mangaRepository;
  GetFavouriteManga(this.mangaRepository);

  Future<List<MangaEntity>> call() async {
    return await mangaRepository.getFavouriteManga();
  }
}

