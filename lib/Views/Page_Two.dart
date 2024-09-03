import 'package:desgin_exam/DataBase/DataPageTowThree.dart';
import 'package:desgin_exam/Method/categorys.dart';
import 'package:desgin_exam/Method/containerPageOneThree.dart';
import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  Dbpagetwothree dbpagetwothree = new Dbpagetwothree();
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
                      "images/44.jpg",
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 50,
                                        height: 40,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(7),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "images/mack.jpg"))),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
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
                                    ],
                                  ),
                                  Icon(
                                    Icons.favorite_rounded,
                                    color: Colors.red,
                                  )
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
                                    color: Colors.orange,
                                    size: 15,
                                  ),
                                  Text(
                                    " 4.9  ",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "200 * Hosting  ",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(left: 0),
                                    child: Icon(
                                      Icons.location_pin,
                                      color: Colors.orange,
                                      size: 20,
                                    ),
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
                        margin: EdgeInsets.only(left: 15, right: 0, top: 0),
                        height: 40,
                        width: MediaQuery.of(context).size.width + 100,
                        child: ListView.builder(
                            itemCount: 1,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return categorys(context);
                            }),
                      ),
                      Container(
                        height: 250,
                        child: ListView.builder(
                            itemCount: 1,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  containerPageOneThree(
                                      context, dbpagetwothree.selectData(0)),
                                  containerPageOneThree(
                                      context, dbpagetwothree.selectData(1)),
                                  containerPageOneThree(
                                      context, dbpagetwothree.selectData(2)),
                                  containerPageOneThree(
                                      context, dbpagetwothree.selectData(3)),
                                ],
                              );
                            }),
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
