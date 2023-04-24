import '../../domain/entities/manga_entity.dart';
import 'package:http/http.dart' as http;
 import 'dart:developer';

class MangaEntityProvider {
  Future<List<MangaEntity>> getAllMangaEntity() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    await Future.delayed(const Duration(seconds: 1));
    // log('response data:' + response.body);
    return mangas;
  }
}