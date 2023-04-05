class Manga {
  final int id;
  final String title, description, image, author;
  final List<String> genres;
  final List<String> chapter_list;

  Manga({
    required this.id,
    required this.title,
    required this.description,
    required this.image,
    required this.genres,
    required this.chapter_list,
    required this.author,
  });
}

// list of products
// for our demo
List<Manga> mangas = [
  Manga(
    id: 1,
    title: "Сайке кусуоу",
    image: "assets/images/1.jpg",
    chapter_list: [
      "1 глава",
      "2 глава",
      "3 глава",
      "3 глава",
      "5 глава",
      "6 глава",
      "7 глава",
    ],
    author: "Ямада хидзео",
    description: "Манхва, экстрасенсорика",
    genres: ["имба гг", " комедия", "романтика", "школа"],
  ),
  Manga(
    id: 2,
    title: "Токийский гуль",
    author: "Ямада хидзео",
    image: "assets/images/2.jpg",
    chapter_list: [
      "1 глава",
      "2 глава",
      "3 глава",
      "3 глава",
      "5 глава",
      "6 глава",
      "7 глава",
    ],
    description: "Манга, Имба гг, супер",
    genres: ["имба гг", " комедия", "романтика", "школа"],
  ),
  Manga(
    id: 3,
    title: "Поднятие уровня в одиночку",
    image: "assets/images/3.jpg",
    chapter_list: [
      "1 глава",
      "2 глава",
      "3 глава",
      "3 глава",
      "5 глава",
      "6 глава",
      "7 глава",
    ],
    author: "Ямада хидзео",
    description: "Манга, Имба гг, супер",
    genres: ["имба гг", " комедия", "романтика", "школа"],
  ),
  Manga(
    id: 4,
    title: "Токийский гуль",
    author: "Ямада хидзео",
    image: "assets/images/4.jpg",
    chapter_list: [
      "1 глава",
      "2 глава",
      "3 глава",
      "3 глава",
      "5 глава",
      "6 глава",
      "7 глава",
    ],
    description: "Манга, Имба гг, супер",
    genres: ["имба гг", " комедия", "романтика", "школа"],
  ),
  Manga(
    id: 5,
    title: "Поднятие уровня в одиночку",
    image: "assets/images/5.jpg",
    chapter_list: [
      "1 глава",
      "2 глава",
      "3 глава",
      "3 глава",
      "5 глава",
      "6 глава",
      "7 глава",
    ],
    author: "Ямада хидзео",
    description: "Манга, Имба гг, супер",
    genres: ["имба гг", " комедия", "романтика", "школа"],
  ),
  Manga(
    id: 6,
    title: "Токийский гуль",
    author: "Ямада хидзео",
    image: "assets/images/2.jpg",
    chapter_list: [
      "1 глава",
      "2 глава",
      "3 глава",
      "3 глава",
      "5 глава",
      "6 глава",
      "7 глава",
    ],
    description: "Манга, Имба гг, супер",
    genres: ["имба гг", " комедия", "романтика", "школа"],
  ),
  Manga(
    id: 7,
    author: "Ямада хидзео",
    title: "Поднятие уровня в одиночку | Solo leveling.......",
    image: "assets/images/3.jpg",
    chapter_list: [
      "1 глава",
      "2 глава",
      "3 глава",
      "3 глава",
      "5 глава",
      "6 глава",
      "7 глава",
    ],
    description: "Манга, Имба гг, супер",
    genres: ["имба гг", " комедия", "романтика", "школа"],
  ),
];
