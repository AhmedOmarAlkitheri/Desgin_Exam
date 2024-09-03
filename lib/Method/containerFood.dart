import 'package:desgin_exam/Model/M_Page_One.dart';
import 'package:flutter/material.dart';

Stack containerFood(BuildContext context, M_PageOne m_PageOne) {
  return Stack(
    children: [
      Positioned(
        child: Container(
          margin: EdgeInsets.only(left: 15, right: 15, top: 10),
          height: 80,
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10.0,
                    offset: Offset(2, 2))
              ],
              borderRadius: BorderRadius.circular(10)),
          width: MediaQuery.of(context).size.width,
          child: Container(
            padding: EdgeInsets.only(right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 100,
                      height: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image:
                                  AssetImage("images/${m_PageOne.pathImage}"))),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      height: 100,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${m_PageOne.title}",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "${m_PageOne.subtitile}\n${m_PageOne.subtitile1}",
                              style: TextStyle(fontSize: 10),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 15,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 15,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 15,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 15,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 15,
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                m_PageOne.thumb_up,
                                m_PageOne.thumb_down,
                              ],
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                m_PageOne.favorite_border
              ],
            ),
          ),
        ),
      ),
      Positioned(
        left: 10,
        child: Container(
          padding: EdgeInsets.only(top: 5),
          margin: EdgeInsets.only(top: 25),
          width: 35,
          height: 20,
          color: Colors.green[600],
          child: Center(
            child: Text(
              "${m_PageOne.countFree} Free",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 7,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    ],
  );
}
