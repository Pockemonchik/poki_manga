import 'package:get_it/get_it.dart';
import 'package:path_provider/path_provider.dart';
import 'package:poki_manga/domain/repositories/manga_repository.dart';
import 'package:poki_manga/domain/usecases/get_favourite_manga.dart';
import 'package:poki_manga/domain/usecases/insert_manga_to_favourites.dart';
import 'package:poki_manga/presentation/cubit/manga_catalog_cubit.dart';
import 'package:poki_manga/presentation/cubit/manga_library_cubit.dart';

import 'data/repositories/manga_repository_impl.dart';
import 'domain/usecases/get_all_manga.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // BLoC / Cubit
  sl.registerFactory(
    () => MangaCatalogCubit(getAllManga: sl(), insertMangaToFavourites: sl()),
  );

  sl.registerFactory(
    () => MangaLibraryCubit(getFavouriteManga: sl()),
  );

  // UseCases
  sl.registerLazySingleton(() => GetAllManga(sl()));
  sl.registerLazySingleton(() => GetFavouriteManga(sl()));
  sl.registerLazySingleton(() => InsertMangaToFavourites(sl()));
  // Repository
  sl.registerLazySingleton<MangaRepository>(
    () => MangaRepositoryImpl(),
  );
}
