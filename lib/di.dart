import 'package:get_it/get_it.dart';
import 'package:path_provider/path_provider.dart';
import 'package:poki_manga/domain/repositories/manga_repository.dart';
import 'package:poki_manga/presentation/cubit/manga_catalog_cubit.dart';

import 'data/repositories/manga_repository_impl.dart';
import 'domain/usecases/get_all_manga.dart';


final sl = GetIt.instance;


Future<void> init() async {
  // BLoC / Cubit
  sl.registerFactory(
    () => MangaCatalogCubit(getAllManga: sl()),
  );
  

  // UseCases
  sl.registerLazySingleton(() => GetAllManga(sl()));
 
  // Repository
  sl.registerLazySingleton<MangaRepository>(
    () => MangaRepositoryImpl(
     
    ),
  );
 
}
