import 'package:flutter/material.dart';

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
    "Room me pada huaa mila",
    "Web Programmer",
  ),
  Recommendation(
    const CircleAvatar(
      radius: 30,
      backgroundImage: AssetImage("assets/images/IMG_7344.jpg"),
    ),
    "Vivek Kalal",
    "Room me pada huaa mila",
    "Web Programmer",
  ),
  Recommendation(
    const CircleAvatar(
      radius: 30,
      backgroundImage: AssetImage("assets/images/IMG_7344.jpg"),
    ),
    "Vivek Kalal",
    "Room me pada huaa mila",
    "Web Programmer",
  ),
];
