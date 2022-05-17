import 'package:flutter/material.dart';
import 'package:shop_app/models/Stand.dart';

class Pazar {
  final int id;
  final String title;
  final List<String> images;
  final bool isFavourite, isPopular;
  final List<Color> colors;
  final List<Stand> stands;

  Pazar({
    required this.id,
    required this.title,
    required this.images,
    this.isFavourite = false,
    this.isPopular = false,
    required this.colors,
    required this.stands,
  });
}

// Our Pazars

List<Pazar> demoPazar = [
  Pazar(
    id: 1,
    title: "Özkanlar Meyve Sebze Pazarı",
    images: [
      "assets/images/ps4_console_white_1.png",
      "assets/images/ps4_console_white_2.png",
      "assets/images/ps4_console_white_3.png",
      "assets/images/ps4_console_white_4.png",
    ],
    isFavourite: true,
    isPopular: true,
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.white,
    ],
    stands: [
      demoStands.elementAt(0),
      demoStands.elementAt(1),
    ],
  ),
  Pazar(
    id: 2,
    title: "Hatay Meyve Sebze Pazarı",
    images: [
      "assets/images/ps4_console_white_1.png",
      "assets/images/ps4_console_white_2.png",
      "assets/images/ps4_console_white_3.png",
      "assets/images/ps4_console_white_4.png",
    ],
    isFavourite: false,
    isPopular: true,
    colors: [
      Color(0xFFF6625E),
      Color(0xFF836DB8),
      Color(0xFFDECB9C),
      Colors.black,
    ],
    stands: [
      demoStands.elementAt(2),
      demoStands.elementAt(3),
    ],
  )
];
