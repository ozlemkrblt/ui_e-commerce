import 'package:flutter/material.dart';
import 'package:shop_app/models/Product.dart';

class Pazar {
  final int id;
  final String title;
  final List<String> images;
  final bool isFavourite, isPopular;
  final List<Color> colors;
  final List<Product> products;

  Pazar({
    required this.id,
    required this.title,
    required this.images,
    this.isFavourite = false,
    this.isPopular = false,
    required this.colors,
    required this.products,
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
      products: [
        Product(
          id: 1,
          images: [
            "assets/images/ps4_console_white_1.png",
            "assets/images/ps4_console_white_2.png",
            "assets/images/ps4_console_white_3.png",
            "assets/images/ps4_console_white_4.png",
          ],
          colors: [
            Color(0xFFF6625E),
            Color(0xFF836DB8),
            Color(0xFFDECB9C),
            Colors.white,
          ],
          title: "Wireless Controller for PS4™",
          price: 64.99,
          description: description,
          rating: 4.8,
          isFavourite: true,
          isPopular: true,
        ),
        Product(
          id: 2,
          images: [
            "assets/images/Image Popular Product 2.png",
          ],
          colors: [
            Color(0xFFF6625E),
            Color(0xFF836DB8),
            Color(0xFFDECB9C),
            Colors.white,
          ],
          title: "Nike Sport White - Man Pant",
          price: 50.5,
          description: description,
          rating: 4.1,
          isPopular: true,
        ),
      ]),
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
    products: [
      Product(
        id: 3,
        images: [
          "assets/images/glap.png",
        ],
        colors: [
          Color(0xFFF6625E),
          Color(0xFF836DB8),
          Color(0xFFDECB9C),
          Colors.white,
        ],
        title: "Gloves XC Omega - Polygon",
        price: 36.55,
        description: description,
        rating: 4.1,
        isFavourite: true,
        isPopular: true,
      ),
      Product(
        id: 4,
        images: [
          "assets/images/wireless headset.png",
        ],
        colors: [
          Color(0xFFF6625E),
          Color(0xFF836DB8),
          Color(0xFFDECB9C),
          Colors.white,
        ],
        title: "Logitech Head",
        price: 20.20,
        description: description,
        rating: 4.1,
        isFavourite: true,
      ),
    ],
  )
];
