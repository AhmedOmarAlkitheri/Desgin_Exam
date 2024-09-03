import 'package:flutter/material.dart';

class MPageTwoThree {
  late String title, subtitile, subtitile1, pathImage, discountPrice, price;
  late Icon favorite_border;
  MPageTwoThree(
      {required this.title,
      required this.subtitile,
      required this.subtitile1,
      required this.pathImage,
      required this.discountPrice,
      required this.price,
      required this.favorite_border});

  static Icon favoriteBorder(Icon favorite) {
    Icon var_favorite = Icon(Icons.favorite);

    if (var_favorite == favorite) {
      favorite = Icon(
        Icons.favorite,
        color: Colors.red,
      );
    } else {
      favorite = Icon(
        Icons.favorite_border,
      );
    }
    return favorite;
  }
}
