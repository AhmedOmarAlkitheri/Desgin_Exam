import 'package:flutter/material.dart';

class M_PageOne {
  late String title, subtitile, subtitile1, pathImage, countFree;
  late Icon thumb_up, thumb_down, favorite_border;
  M_PageOne(
      {required this.title,
      required this.subtitile,
      required this.subtitile1,
      required this.pathImage,
      required this.countFree,
      required this.thumb_up,
      required this.thumb_down,
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
