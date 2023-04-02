class Manga {
  final int id;
  final String title, description, image;

  Manga({required this.id, required this.title, required this.description, required this.image});
}

// list of products
// for our demo
List<Manga> mangas = [
  Manga(
    id: 1,
    title: "Сайке кусуоу",
    image: "images/1.jpg",
    description:
        "Манхва, экстрасенсорика",
  ),
  Manga(
    id: 2,
    title: "Токийский гуль",
    image: "images/2.jpg",
    description:
        "Манга, Имба гг, супер",
  ),
  Manga(
    id: 3,
    title: "Поднятие уровня в одиночку",
    image: "images/3.jpg",
    description:
        "Манга, Имба гг, супер",
  ),
  Manga(
    id: 4,
    title: "Токийский гуль",
    image: "images/4.jpg",
    description:
        "Манга, Имба гг, супер",
  ),
  Manga(
    id: 5,
    title: "Поднятие уровня в одиночку",
    image: "images/5.jpg",
    description:
        "Манга, Имба гг, супер ",
  ),
  Manga(
    id: 6,
    title: "Токийский гуль",
    image: "images/2.jpg",
    description:
        "Манга, Имба гг, супер ",
  ),
  Manga(
    id: 7,
    title: "Поднятие уровня в одиночку | Solo leveling.......",
    image: "images/3.jpg",
    description:
        "Манга, Имба гг, супер ",
  ),
];
