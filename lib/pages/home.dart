import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        body: SafeArea(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [Color(0xff15062d), Color(0xff1b0a34)],
        )),
        child: Column(children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 20, top: 40, right: 20, bottom: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hi, Good Morning",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Icon(
                  CupertinoIcons.bell_fill,
                  color: Colors.white,
                  size: 28.0,
                ),
              ],
            ),
          ),
          Expanded(
              child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color(0xff261b57),
                      Color(0xff111032),
                      Color(0xff15072b)
                    ]),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 20, top: 20, right: 20, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                      text: TextSpan(
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.w400,
                          ),
                          children: [
                        TextSpan(text: 'You have earned \n'),
                        TextSpan(
                            text: '0.00023145 ',
                            style: TextStyle(
                                foreground: Paint()
                                  ..shader = LinearGradient(
                                    colors: <Color>[
                                      Color(0xff6366F1),
                                      Color(0xffFB31FF)
                                      //add more color here.
                                    ],
                                  ).createShader(
                                      Rect.fromLTWH(0.0, 0.0, 200.0, 100.0)))),
                        TextSpan(text: 'PUSS today'),
                      ])),
                  SizedBox(
                    height: screenWidth * 0.025,
                  ),
                  Text(
                    "Hash Rate 1.6P/Hr",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(
                    height: screenWidth * 0.05,
                  ),
                  Container(
                    width: screenHeight * 0.25,
                    padding: EdgeInsets.fromLTRB(7, 10, 7, 10),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 11, 11, 14),
                        border: Border.all(color: Color(0xff604E868A)),
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          CupertinoIcons.bolt,
                          color: Color(0xff6C64F2),
                          size: 15,
                        ),
                        SizedBox(
                          width: screenHeight * 0.01,
                        ),
                        Text(
                          "Increased mining speed",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: screenWidth * 0.06,
                  ),
                  Container(
                    width: screenHeight * 0.8,
                    height: screenWidth * 0.02,
                    decoration: BoxDecoration(
                        border: Border(
                          left:
                              BorderSide(color: Color(0xff604E868A), width: 1),
                          right:
                              BorderSide(color: Color(0xff604E868A), width: 1),
                          top: BorderSide(color: Color(0xff604E868A), width: 3),
                          bottom:
                              BorderSide(color: Color(0xff604E868A), width: 0),
                        ),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                  ),
                  SizedBox(
                    height: screenWidth * 0.03,
                  ),
                  Text(
                    "Available Token Balance",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.006,
                  ),
                  Row(
                    children: [
                      Icon(
                        CupertinoIcons.settings,
                        color: Color(0xff6C64F2),
                        size: 25,
                      ),
                      SizedBox(
                        width: screenHeight * 0.01,
                      ),
                      Text(
                        "38.501 PUSS",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        width: screenHeight * 0.09,
                      ),
                      Container(
                        width: screenHeight * 0.15,
                        padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
                        decoration: BoxDecoration(
                            color: Color(0xff7578ED),
                            border: Border.all(color: Color(0xff604E868A)),
                            borderRadius: BorderRadius.circular(25)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              CupertinoIcons.creditcard_fill,
                              color: Color(0xffffffff),
                              size: 15,
                            ),
                            SizedBox(
                              width: screenHeight * 0.01,
                            ),
                            Text(
                              "Withdraw",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.1,)
                  Container(
                    width: screenHeight * 0.8,
                    height: screenWidth * 0.3,
                    padding: EdgeInsets.fromLTRB(7, 10, 7, 10),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 11, 11, 14),
                        border: Border.all(color: Color(0xff604E868A)),
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          CupertinoIcons.bolt,
                          color: Color(0xff6C64F2),
                          size: 15,
                        ),
                        SizedBox(
                          width: screenHeight * 0.01,
                        ),
                        Text(
                          "Increased mining speed",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ))
        ]),
      ),
    ));
  }
}

AppBar appBar() {
  return AppBar(
    title: Text(
      "Puss Puss",
      style: TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    ),
    backgroundColor: Colors.white,
    elevation: 0.0,
    centerTitle: true,
    leading: GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Color(0xfff7f8f8), borderRadius: BorderRadius.circular(10)),
        child: Icon(
          CupertinoIcons.chevron_left_2,
          color: Colors.black,
          size: 20.0,
        ),
      ),
    ),
    actions: [
      GestureDetector(
        onTap: () {},
        child: Container(
          margin: EdgeInsets.all(10),
          width: 37,
          decoration: BoxDecoration(
              color: Color(0xfff7f8f8),
              borderRadius: BorderRadius.circular(10)),
          child: Icon(
            CupertinoIcons.ellipsis,
            color: Colors.black,
            size: 20.0,
          ),
        ),
      ),
    ],
  );
}
