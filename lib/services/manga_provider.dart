import '../models/manga.dart';
import 'package:http/http.dart' as http;
 import 'dart:developer';

class MangaProvider {
  Future<List<Manga>> getAllManga() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    await Future.delayed(const Duration(seconds: 1));
    log('response data:' + response.body);
    return mangas;
  }
}