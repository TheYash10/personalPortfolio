import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

class Recommendation {
  final String? name, source, text;
  final Widget? image;

  Recommendation(this.image, this.name, this.source, this.text);
}

final List<Recommendation> demo_recommenadation = [
  Recommendation(
    const CircleAvatar(
      radius: 30,
      backgroundImage: AssetImage("assets/images/IMG_7344.jpg"),
    ),
    "Vivek Kalal",
    lorem(paragraphs: 1, words: 80),
    "Web Programmer",
  ),
  Recommendation(
    const CircleAvatar(
      radius: 30,
      backgroundImage: AssetImage("assets/images/IMG_7344.jpg"),
    ),
    "Aman Singh",
    lorem(paragraphs: 1, words: 80),
    "Andriod Developer",
  ),
  Recommendation(
    const CircleAvatar(
      radius: 30,
      backgroundImage: AssetImage("assets/images/IMG_7344.jpg"),
    ),
    "Saeed Anwar",
    lorem(paragraphs: 1, words: 80),
    "Web Programmer",
  ),
];
