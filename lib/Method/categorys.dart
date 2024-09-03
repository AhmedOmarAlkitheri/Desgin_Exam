import 'package:flutter/material.dart';

List<String> NameCategory = [
  "Offer",
  "Burger",
  "Magins",
  "Pizza",
  "Offer",
  "Burger",
  "Magins",
  "Pizza"
];
Container categorys(BuildContext context) {
  return Container(
    decoration: BoxDecoration(
        color: Colors.orange[100], borderRadius: BorderRadius.circular(20)),
    width: MediaQuery.of(context).size.width + 100,
    child: Row(
      children: FetchData(NameCategory),
    ),
  );
}

FetchData(List<String> namecategory) {
  List<Text> t = [];
  for (var i = 0; i < namecategory.length; i++) {
    if (i == 0) {
      t.add(
        Text(
          "    ${namecategory[i]}",
          style: TextStyle(color: Colors.orange),
        ),
      );
    } else {
      t.add(
        Text(
          "    ${namecategory[i]}",
          style: TextStyle(color: Colors.grey),
        ),
      );
    }
  }
  return t;
}
