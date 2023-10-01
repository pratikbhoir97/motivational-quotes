import 'package:flutter/material.dart';

class Configuration{
  static List<String> categoryNameList = [
  "Inspiration",
  "Education",
  "Love",
  "Life",
  "Art",
  "Success",
  "Romance",
  "Relationship",
  "Wisdom",
  "Knowledge",
  "Hope",
  "Science",
  "Happiness",
  "Friendship",
  "Poetry",
  "Death",
  ];


  static List<String> imageList = [
    "assets/images/inspiration.jpg",
    "assets/images/education.jpg",
    "assets/images/love.jpg",
    "assets/images/life.jpg",
    "assets/images/art.jpg",
    "assets/images/success.jpg",
    "assets/images/romance.jpg",
    "assets/images/relationship.jpg",
    "assets/images/wisdom.jpg",
    "assets/images/knowledge.jpg",
    "assets/images/hope.jpg",
    "assets/images/science.jpg",
    "assets/images/happiness.jpg",
    "assets/images/friendship.jpg",
    "assets/images/poetry.jpg",
    "assets/images/death.jpg",
  ];

  static List<LinearGradient> gradientList = [
    LinearGradient(
      colors: [Colors.red, Colors.yellow],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
    LinearGradient(
      colors: [Colors.blue, Colors.green],
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
    ),
    LinearGradient(
      colors: [Colors.blue.shade400, Colors.blue.shade800],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
    LinearGradient(
      colors: [Colors.pink.shade400, Colors.purple.shade800],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
    LinearGradient(
      colors: [Colors.orange.shade400, Colors.pink.shade300],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
    LinearGradient(
      colors: [Colors.teal.shade400, Colors.blue.shade900],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
    LinearGradient(
      colors: [Colors.indigo.shade400, Colors.purple.shade800],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),

    LinearGradient(
      colors: [Colors.red, Colors.yellow],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
    LinearGradient(
      colors: [Colors.blue, Colors.green],
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
    ),
    LinearGradient(
      colors: [Colors.blue.shade400, Colors.blue.shade800],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),

    LinearGradient(
      colors: [Colors.teal.shade400, Colors.blue.shade900],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
    LinearGradient(
      colors: [Colors.indigo.shade400, Colors.purple.shade800],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),

    LinearGradient(
      colors: [Colors.pink.shade400, Colors.purple.shade800],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
    LinearGradient(
      colors: [Colors.orange.shade400, Colors.pink.shade300],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
    LinearGradient(
      colors: [Colors.teal.shade400, Colors.blue.shade900],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
    LinearGradient(
      colors: [Colors.indigo.shade400, Colors.purple.shade800],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
  ];


  static List<String> quoteJsonPath = [
    'assets/json_files/inspiration.json',
    'assets/json_files/education.json',
    'assets/json_files/love.json',
    'assets/json_files/life.json',
    'assets/json_files/art.json',
    'assets/json_files/success.json',
    'assets/json_files/romance.json',
    'assets/json_files/relationship.json',
    'assets/json_files/wisdom.json',
    'assets/json_files/knowledge.json',
    'assets/json_files/hope.json',
    'assets/json_files/science.json',
    'assets/json_files/happiness.json',
    'assets/json_files/friendship.json',
    'assets/json_files/poetry.json',
    'assets/json_files/death.json',
  ];
}
