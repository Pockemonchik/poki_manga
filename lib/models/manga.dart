class Manga {
  final int id;
  final String title, description, image, author;
  final List<String> genres;

  Manga({
    required this.id,
    required this.title,
    required this.description,
    required this.image,
    required this.genres,
    required this.author,
  });
}

// list of products
// for our demo
List<Manga> mangas = [
  Manga(
    id: 1,
    title: "Сайке кусуоу",
    image: "images/1.jpg",
    author: "Ямада хидзео",
    description: "Манхва, экстрасенсорика",
    genres: ["имба гг", " комедия", "романтика", "школа"],
  ),
  Manga(
    id: 2,
    title: "Токийский гуль",
    author: "Ямада хидзео",
    image: "images/2.jpg",
    description: "Манга, Имба гг, супер",
    genres: ["имба гг", " комедия", "романтика", "школа"],
  ),
  Manga(
    id: 3,
    title: "Поднятие уровня в одиночку",
    image: "images/3.jpg",
    author: "Ямада хидзео",
    description: "Манга, Имба гг, супер",
    genres: ["имба гг", " комедия", "романтика", "школа"],
  ),
  Manga(
    id: 4,
    title: "Токийский гуль",
    author: "Ямада хидзео",
    image: "images/4.jpg",
    description: "Манга, Имба гг, супер",
    genres: ["имба гг", " комедия", "романтика", "школа"],
  ),
  Manga(
    id: 5,
    title: "Поднятие уровня в одиночку",
    image: "images/5.jpg",
    author: "Ямада хидзео",
    description: "Манга, Имба гг, супер",
    genres: ["имба гг", " комедия", "романтика", "школа"],
  ),
  Manga(
    id: 6,
    title: "Токийский гуль",
    author: "Ямада хидзео",
    image: "images/2.jpg",
    description: "Манга, Имба гг, супер",
    genres: ["имба гг", " комедия", "романтика", "школа"],
  ),
  Manga(
    id: 7,
    author: "Ямада хидзео",
    title: "Поднятие уровня в одиночку | Solo leveling.......",
    image: "images/3.jpg",
    description: "Манга, Имба гг, супер",
    genres: ["имба гг", " комедия", "романтика", "школа"],
  ),
];
