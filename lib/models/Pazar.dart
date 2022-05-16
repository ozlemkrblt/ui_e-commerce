import 'package:flutter/material.dart';

class Pazar {
  final int id;
  final String title;

  Pazar({
    required this.id,
    required this.title,
  });
}

// Our Pazars

List<Pazar> demoPazar = [
  Pazar(
    id: 1,
    title: "Özkanlar Meyve Sebze Pazaro",
  ),
  Pazar(
    id: 2,
    title: "Hatay Meyve Sebze Pazarı",
  )
];
