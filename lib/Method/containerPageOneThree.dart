import 'package:desgin_exam/Model/M_Page_Two_Three.dart';
import 'package:flutter/material.dart';

Container containerPageOneThree(
    BuildContext context, MPageTwoThree Mpagetwothree) {
  return Container(
    margin: EdgeInsets.only(left: 15, right: 15, top: 10),
    height: 80,
    decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.black26, blurRadius: 10.0, offset: Offset(2, 2))
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
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image:
                            AssetImage("images/${Mpagetwothree.pathImage}"))),
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
                      Row(
                        children: [
                          Text(
                            "${Mpagetwothree.title}",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 100,
                          ),
                          Mpagetwothree.favorite_border,
                        ],
                      ),
                      Text(
                        "${Mpagetwothree.subtitile}\n${Mpagetwothree.subtitile1}",
                        style: TextStyle(fontSize: 10),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                "\$${Mpagetwothree.discountPrice}",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "\$${Mpagetwothree.price}",
                                style: TextStyle(
                                    color: Colors.grey,
                                    decoration: TextDecoration.lineThrough),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 93,
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
}
