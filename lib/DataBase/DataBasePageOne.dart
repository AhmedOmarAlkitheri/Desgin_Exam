import 'package:desgin_exam/Model/M_Page_One.dart';
import 'package:flutter/material.dart';

class DataBasePageOne {
  List<M_PageOne> m_pageOne = [];

  fetchData() {
    m_pageOne.add(M_PageOne(
        title: "Mc Donalds",
        subtitile: "the name Donalds",
        subtitile1: "Very fast",
        pathImage: "mack.jpg",
        countFree: "100",
        thumb_up: Icon(
          Icons.thumb_up_off_alt,
          size: 15,
        ),
        thumb_down: Icon(
          Icons.thumb_down,
          size: 15,
        ),
        favorite_border: Icon(Icons.favorite_border)));
    m_pageOne.add(M_PageOne(
        title: "Dominos",
        subtitile: "the name Dominos",
        subtitile1: "Very fast",
        pathImage: "Dominos.jpg",
        countFree: "50",
        thumb_up: Icon(
          Icons.thumb_up,
          size: 15,
        ),
        thumb_down: Icon(
          Icons.thumb_down,
          size: 15,
        ),
        favorite_border: Icon(
          Icons.favorite,
          color: Colors.red,
        )));

    m_pageOne.add(M_PageOne(
        title: "Burger King",
        subtitile: "the name Burger King",
        subtitile1: "Very fast",
        pathImage: "burger_King.jpg",
        countFree: "150",
        thumb_up: Icon(
          Icons.thumb_up_off_alt,
          size: 15,
        ),
        thumb_down: Icon(
          Icons.thumb_down,
          size: 15,
        ),
        favorite_border: Icon(Icons.favorite_border)));
    m_pageOne.add(M_PageOne(
        title: "Wingos",
        subtitile: "the name Wingos",
        subtitile1: "Very fast",
        pathImage: "wingos.jpg",
        countFree: "70",
        thumb_up: Icon(
          Icons.thumb_up,
          size: 15,
        ),
        thumb_down: Icon(
          Icons.thumb_down,
          size: 15,
        ),
        favorite_border: Icon(
          Icons.favorite,
          color: Colors.red,
        )));
  }

  M_PageOne selectData(int index) {
    late M_PageOne m_pageOne1;
    fetchData();
    for (var i = 0; i < m_pageOne.length; i++) {
      if (i == index) {
        m_pageOne1 = m_pageOne[i];
        break;
      }
    }
    return m_pageOne1;
  }
}
