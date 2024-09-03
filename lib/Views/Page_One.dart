import 'package:desgin_exam/DataBase/DataBasePageOne.dart';
import 'package:desgin_exam/Method/containerFood.dart';
import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  DataBasePageOne dbPageOne = new DataBasePageOne();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.pink,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Stack(
                  children: [
                    Positioned(
                      child: Container(
                        padding: EdgeInsets.only(left: 15),
                        width: MediaQuery.of(context).size.width,
                        height: 200,
                        child: Stack(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 30),
                              child: Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                              ),
                            ),
                            Positioned(
                              right: -90,
                              top: 2,
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 150, top: 10, bottom: 0, right: 0),
                                width: 250,
                                height: 250,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image: AssetImage("images/pizza.jpg"),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Mega Deal",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text("Get mage here",
                                      style: TextStyle(
                                        color: Colors.white,
                                      )),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
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
                        child: Container(
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                    left: 15, right: 15, top: 25),
                                height: 60,
                                decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.circular(10)),
                                width: MediaQuery.of(context).size.width,
                                child: Container(
                                  padding: EdgeInsets.only(left: 10, right: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.info_outline,
                                            color: Colors.white,
                                          ),
                                          Text("  Compaign info",
                                              style: TextStyle(
                                                color: Colors.white,
                                              )),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text("Read More  ",
                                              style: TextStyle(
                                                color: Colors.white,
                                              )),
                                          Icon(
                                            Icons.arrow_forward,
                                            color: Colors.white,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 365,
                                child: ListView.builder(
                                  padding: EdgeInsets.only(top: 7),
                                  itemCount: 1,
                                  itemBuilder: (context, index) {
                                    return Column(
                                      children: [
                                        containerFood(
                                            context, dbPageOne.selectData(0)),
                                        containerFood(
                                            context, dbPageOne.selectData(1)),
                                        containerFood(
                                            context, dbPageOne.selectData(2)),
                                        containerFood(
                                            context, dbPageOne.selectData(3)),
                                      ],
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
