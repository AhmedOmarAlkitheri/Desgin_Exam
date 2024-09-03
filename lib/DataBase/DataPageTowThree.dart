import 'package:desgin_exam/Model/M_Page_Two_Three.dart';
import 'package:flutter/material.dart';

class Dbpagetwothree {
  List<MPageTwoThree> Mpagetwothree = [];

  fetchData() {
    Mpagetwothree.add(MPageTwoThree(
        title: "Mc Donalds",
        subtitile: "the name Donalds",
        subtitile1: "Very fast",
        pathImage: "11.jpg",
        discountPrice: "4.50",
        price: "6.55",
        favorite_border: Icon(Icons.favorite_border)));
    Mpagetwothree.add(MPageTwoThree(
        title: "Starbaks     ",
        subtitile: "the name Starbaks",
        subtitile1: "Very fast",
        pathImage: "22.jpg",
        discountPrice: "6.50",
        price: "8.55",
        favorite_border: Icon(
          Icons.favorite,
          color: Colors.red,
        )));

    Mpagetwothree.add(MPageTwoThree(
        title: "Mc Donalds",
        subtitile: "the name Donalds",
        subtitile1: "Very fast",
        pathImage: "33.jpg",
        discountPrice: "4.50",
        price: "6.00",
        favorite_border: Icon(Icons.favorite_border)));
    Mpagetwothree.add(MPageTwoThree(
        title: "Starbaks     ",
        subtitile: "the name Starbaks",
        subtitile1: "Very fast",
        pathImage: "44.jpg",
        discountPrice: "3.50",
        price: "5.55",
        favorite_border: Icon(
          Icons.favorite,
          color: Colors.red,
        )));
  }

  MPageTwoThree selectData(int index) {
    late MPageTwoThree Mpagetwothree1;
    fetchData();
    for (var i = 0; i < Mpagetwothree.length; i++) {
      if (i == index) {
        Mpagetwothree1 = Mpagetwothree[i];
        break;
      }
    }
    return Mpagetwothree1;
  }
}
