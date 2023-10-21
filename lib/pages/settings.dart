import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [Color(0xff15062d), Color(0xff1b0a34)],
      )),
      child: ListView(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 20, top: 50, right: 20, bottom: 10),
            child: Center(
              child: SizedBox(
                width: screenWidth * 0.9,
                child: TextField(
                  enabled: false,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(5),
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                    prefixIcon: Text(
                      "Settings",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                      ),
                    ),

                    //suffixicon here when needed
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: screenHeight * 0.01,
          ),
          Center(
            child: Container(
              width: screenWidth * 0.9,
              height: 225,
              padding: EdgeInsets.fromLTRB(7, 10, 7, 10),
              decoration: BoxDecoration(
                  color: Color.fromARGB(104, 11, 11, 14),
                  border: Border.all(color: Color(0x604E868A)),
                  borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          CupertinoIcons.gift_fill,
                          color: Color(0xff6C64F2),
                          size: 25,
                        ),
                        Icon(
                          CupertinoIcons.clear,
                          color: Color(0xffffffff),
                          size: 20,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: screenHeight * 0.03,
                    ),
                    Text(
                      "Refer PUSS Miner to friends and qualify to win many exciting rewards.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.03,
                    ),
                    Container(
                      width: 200,
                      padding: EdgeInsets.fromLTRB(7, 10, 7, 10),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(137, 11, 11, 14),
                          border: Border.all(color: Color(0x604E868A)),
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            CupertinoIcons.link,
                            color: Color(0xff6C64F2),
                            size: 16,
                          ),
                          SizedBox(
                            width: screenHeight * 0.01,
                          ),
                          Text(
                            "Share referral link",
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
            ),
          ),
          SizedBox(
            height: screenHeight * 0.03,
          ),
          Center(
            child: Container(
              padding: EdgeInsets.all(8),
              width: screenWidth * 0.9,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  border: Border.all(
                    width: 1,
                    color: Color(0x604E868A),
                  )),
              child: TextField(
                focusNode: FocusNode(),
                enableInteractiveSelection: false,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(5),
                  prefixIcon: Row(
                    children: [
                      Icon(
                        CupertinoIcons.bell_circle,
                        color: Color(0xffffffff),
                        size: 22,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Pause Notifications",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                  suffixIcon: Padding(
                    padding: EdgeInsets.all(5),
                    child: GestureDetector(
                      onTap: () {},
                      child: Icon(
                        CupertinoIcons.square_line_vertical_square_fill,
                        color: Color(0xffffffff),
                        size: 22,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: screenHeight * 0.025),
          Center(
            child: SizedBox(
              width: screenWidth * 0.9,
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        CupertinoIcons.book,
                        color: Color(0xffffffff),
                        size: 20,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "FAQ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: screenHeight * 0.025,
                  ),
                  Row(
                    children: [
                      Icon(
                        CupertinoIcons.person_3_fill,
                        color: Color(0xffffffff),
                        size: 20,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Community",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.025),
                  Row(
                    children: [
                      Icon(
                        CupertinoIcons.person_crop_circle,
                        color: Color(0xffffffff),
                        size: 20,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "About Us",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.025),
                  Row(
                    children: [
                      Icon(
                        CupertinoIcons.doc_text,
                        color: Color(0xffffffff),
                        size: 20,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Privacy Policy",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
