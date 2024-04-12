import 'package:storystack/Models/book_model.dart';

var categoryData = [
  {
    "icon": "Assets/Icons/fiction.png",
    "lebel": "Fiction",
  },
  {
    "icon": "Assets/Icons/nonfiction.png",
    "lebel": "Non-Fiction",
  },
  {
    "icon": "Assets/Icons/thriller.png",
    "lebel": "Thriller",
  },
  {
    "icon": "Assets/Icons/fantasy.png",
    "lebel": "Fantasy",
  },
  {
    "icon": "Assets/Icons/plane.svg",
    "lebel": "Travel",
  },
  {
    "icon": "Assets/Icons/world.svg",
    "lebel": "Documentary",
  },
  {
    "icon": "Assets/Icons/heart.svg",
    "lebel": "Romance",
  },
  {
    "icon": "Assets/Icons/horror.png",
    "lebel": "Horror",
  },
  {
    "icon": "Assets/Icons/science.png",
    "lebel": "Science",
  },
  {
    "icon": "Assets/Icons/poetry.png",
    "lebel": "Poetry",
  },
  {
    "icon": "Assets/Icons/quack.png",
    "lebel": "Quack",
  },
];

var bookData = [
  BookModel(
    id: "1",
    title: "The Great Gatsby",
    description:
        "something som,ething something something sieoajsldfkhajnsklj dhnals",
    audioLen: "20",
    author: "F. Scott Fitzgerald",
    coverUrl: "Assets/Images/greatgatsby.jpg",
    rating: "4.2",
    category: "Fiction",
    totalRatings: 10,
    price: 100,
  ),
  BookModel(
    id: "2",
    title: "LightFall",
    description:
        "something som,ething something something sieoajsldfkhajnsklj dhnals",
    audioLen: "20",
    author: "Tim Probert",
    coverUrl: "Assets/Images/lightfall.jpg",
    rating: "4.2",
    category: "Fiction",
    totalRatings: 10,
    price: 100,
  ),
  BookModel(
    id: "3",
    title: "Scavengers",
    description:
        "something som,ething something something sieoajsldfkhajnsklj dhnals",
    audioLen: "20",
    author: "Darren Simpson",
    coverUrl: "Assets/Images/scavengers.jpg",
    rating: "4.2",
    category: "Horror",
    totalRatings: 10,
    price: 100,
  ),
  BookModel(
    id: "4",
    title: "Not Here To Be Liked",
    description:
        "something som,ething something something sieoajsldfkhajnsklj dhnals",
    audioLen: "20",
    author: "Michelle Quach",
    coverUrl: "Assets/Images/notheretobeliked.jpg",
    rating: "4.2",
    category: "Romance",
    totalRatings: 10,
    price: 100,
  ),
  BookModel(
    id: "5",
    title: "The Invisible Man",
    description:
        "something som,ething something something sieoajsldfkhajnsklj dhnals",
    audioLen: "20",
    author: "Ralph Ellison",
    coverUrl: "Assets/Images/theinvisibleman.jpg",
    rating: "4.2",
    category: "Horror",
    totalRatings: 10,
    price: 100,
  ),
  BookModel(
    id: "6",
    title: "When We Were Still Human",
    description:
        "something som,ething something something sieoajsldfkhajnsklj dhnals",
    audioLen: "20",
    author: "Vaughn A. Foster Jr.",
    coverUrl: "Assets/Images/whenwewerestillhuman.jpg",
    rating: "4.2",
    category: "Fiction",
    totalRatings: 10,
    price: 100,
  )
];
