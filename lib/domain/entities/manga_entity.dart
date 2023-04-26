import 'package:equatable/equatable.dart';

class MangaEntity extends Equatable{
  final int id;
  final String title, description, image, author;
  bool favourite;
  final List<String> genres;
  final List<Map> chapter_list;

  MangaEntity({
    required this.id,
    required this.title,
    required this.description,
    required this.image,
    required this.genres,
    required this.chapter_list,
    required this.author,
    required this.favourite,
  });
  
  @override
  // TODO: implement props
  List<Object?> get props => [title,];
}

// list of products
// for our demo
List<MangaEntity> mangas = [
  MangaEntity(
    id: 1,
    title: "Сайке кусуоу",
    image: "assets/images/1.jpg",
    chapter_list: [
      {"title": "1 глава", "status": true},
      {"title": "1 глава", "status": true},
      {"title": "1 глава", "status": true},
      {"title": "1 глава", "status": false},
      {"title": "1 глава", "status": true},
      {"title": "1 глава", "status": false},
    ],
    favourite: false,
    author: "Ямада хидзео",
    description: "Манхва, экстрасенсорика",
    genres: ["имба гг", " комедия", "романтика", "школа"],
  ),
  MangaEntity(
    id: 2,
    title: "Токийский гуль",
    favourite: true,
    author: "Ямада хидзео",
    image: "assets/images/2.jpg",
    chapter_list: [
      {"title": "1 глава", "status": true},
      {"title": "1 глава", "status": false},
      {"title": "1 глава", "status": false},
      {"title": "1 глава", "status": true},
      {"title": "1 глава", "status": true},
      {"title": "1 глава", "status": true},
    ],
    description: "Манга, Имба гг, супер",
    genres: ["имба гг", " комедия", "романтика", "школа"],
  ),
  MangaEntity(
    id: 3,
    title: "Поднятие уровня в одиночку",
    image: "assets/images/3.jpg",
    chapter_list: [
      {"title": "1 глава", "status": false},
      {"title": "1 глава", "status": true},
      {"title": "1 глава", "status": false},
      {"title": "1 глава", "status": true},
      {"title": "1 глава", "status": true},
      {"title": "1 глава", "status": true},
    ],
    favourite: false,
    author: "Ямада хидзео",
    description: "Манга, Имба гг, супер",
    genres: ["имба гг", " комедия", "романтика", "школа"],
  ),
  MangaEntity(
    id: 4,
    title: "Токийский гуль",
    favourite: true,
    author: "Ямада хидзео",
    image: "assets/images/4.jpg",
    chapter_list: [
      {"title": "1 глава", "status": true},
      {"title": "1 глава", "status": true},
      {"title": "1 глава", "status": true},
      {"title": "1 глава", "status": true},
      {"title": "1 глава", "status": false},
      {"title": "1 глава", "status": true},
    ],
    description: "Манга, Имба гг, супер",
    genres: ["имба гг", " комедия", "романтика", "школа"],
  ),
  MangaEntity(
    id: 5,
    title: "Поднятие уровня в одиночку",
    image: "assets/images/5.jpg",
    chapter_list: [
      {"title": "1 глава", "status": true},
      {"title": "1 глава", "status": false},
      {"title": "1 глава", "status": true},
      {"title": "1 глава", "status": true},
      {"title": "1 глава", "status": false},
      {"title": "1 глава", "status": true},
    ],
    favourite: false,
    author: "Ямада хидзео",
    description: "Манга, Имба гг, супер",
    genres: ["имба гг", " комедия", "романтика", "школа"],
  ),
  MangaEntity(
    id: 6,
    title: "Токийский гуль",
    favourite: true,
    author: "Ямада хидзео",
    image: "assets/images/2.jpg",
    chapter_list: [
      {"title": "1 глава", "status": true},
      {"title": "1 глава", "status": true},
      {"title": "1 глава", "status": false},
      {"title": "1 глава", "status": true},
      {"title": "1 глава", "status": false},
      {"title": "1 глава", "status": false},
    ],
    description: "Манга, Имба гг, супер",
    genres: ["имба гг", " комедия", "романтика", "школа"],
  ),
  MangaEntity(
    id: 7,
    favourite: false,
    author: "Ямада хидзео",
    title: "Поднятие уровня в одиночку | Solo leveling.......",
    image: "assets/images/3.jpg",
    chapter_list: [
      {"title": "1 глава", "status": true},
      {"title": "1 глава", "status": false},
      {"title": "1 глава", "status": true},
      {"title": "1 глава", "status": false},
      {"title": "1 глава", "status": true},
      {"title": "1 глава", "status": true},
    ],
    description: "Манга, Имба гг, супер",
    genres: ["имба гг", " комедия", "романтика", "школа"],
  ),
];
