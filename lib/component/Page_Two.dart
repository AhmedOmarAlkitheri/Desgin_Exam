import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.pink,
          child: Stack(
            children: [
              Positioned(
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    child: Image.asset(
                      "images/pic1.jpg",
                      fit: BoxFit.cover,
                    )),
              ),
              Positioned(
                top: 180,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height - 180,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: Column(
                    children: [
                      Container(
                          margin: EdgeInsets.only(left: 10, right: 10, top: 20),
                          height: 130,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)),
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 80,
                                        height: 60,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "images/pic4.jpg"))),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Center(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "Mc Donalds",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                              "the name Donalds Very fast",
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 10),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Icon(Icons.favorite_border)
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "day three  ",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Text(
                                    "8:30 am to 11:00 pm",
                                    style: TextStyle(color: Colors.orange),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 15,
                                  ),
                                  Text(
                                    "4.9  ",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "200 * Hosting  ",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.location_pin,
                                    color: Colors.orange,
                                  ),
                                  Text(
                                    " Location",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              )
                            ],
                          )),
                      Container(
                        margin: EdgeInsets.only(left: 15, right: 15, top: 15),
                        height: 40,
                        width: MediaQuery.of(context).size.width + 100,
                        child: ListView.builder(
                            itemCount: 1,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Container(
                                decoration: BoxDecoration(
                                    color: Colors.orange[100],
                                    borderRadius: BorderRadius.circular(20)),
                                width: MediaQuery.of(context).size.width + 100,
                                child: Row(
                                  children: [
                                    Text(
                                      "  Offer1  ",
                                      style: TextStyle(color: Colors.orange),
                                    ),
                                    Text(
                                      "  Offer2  ",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    Text(
                                      "  Offer3  ",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    Text(
                                      "  Offer4  ",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    Text(
                                      "  Offer5  ",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    Text(
                                      "  Offer6  ",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    Text(
                                      "  Offer7  ",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    Text(
                                      "  Offer8  ",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                              );
                            }),
                      ),
                      Container(
                        height: 250,
                        child: ListView.builder(
                          itemCount: 6,
                          itemBuilder: (context, index) {
                            return Container(
                              margin:
                                  EdgeInsets.only(left: 15, right: 15, top: 10),
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          width: 100,
                                          height: 80,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      "images/pic4.jpg"))),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        SizedBox(
                                          height: 100,
                                          child: Center(
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    Text(
                                                      "Mc Donalds",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    SizedBox(
                                                      width: 100,
                                                    ),
                                                    Icon(Icons.favorite_border),
                                                  ],
                                                ),
                                                Text(
                                                  "the name Donalds\nVery fast",
                                                  style:
                                                      TextStyle(fontSize: 10),
                                                ),
                                                Row(
                                                  children: [
                                                    Text(
                                                      "\$5.55",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    Text(
                                                      "  \$5.55",
                                                      style: TextStyle(
                                                          color: Colors.grey,
                                                          decoration:
                                                              TextDecoration
                                                                  .lineThrough),
                                                    ),
                                                    SizedBox(
                                                      width: 97,
                                                    ),
                                                    Icon(
                                                      Icons.add,
                                                      size: 25,
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
