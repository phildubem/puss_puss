import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        resizeToAvoidBottomInset: true,
        bottomNavigationBar: GNav(
            iconSize: 25,
            tabBorderRadius: 15,
            backgroundColor: Color(0xff15062d),
            color: Color(0xff6366F1).withOpacity(0.5),
            activeColor: Color(0xff6366F1),
            tabBackgroundColor: Color(0xff6366F1).withOpacity(0.08),
            gap: 8,
            padding: EdgeInsets.all(16),
            tabs: const [
              GButton(
                icon: CupertinoIcons.bolt_fill,
                text: 'Mine',
              ),
              GButton(
                icon: CupertinoIcons.creditcard_fill,
                text: 'Withdraw',
              ),
              GButton(
                icon: CupertinoIcons.gear_solid,
                text: 'Settings',
              ),
            ]),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Color(0xff15062d), Color(0xff1b0a34)],
          )),
          child: ListView(children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, top: 50, right: 20, bottom: 20),
              child: Center(
                child: SizedBox(
                  width: screenWidth * 0.9,
                  child: TextField(
                    focusNode: FocusNode(),
                    enableInteractiveSelection: false,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(5),
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      prefixIcon: Text(
                        "Hi, Good Morning",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      suffixIcon: Padding(
                        padding: EdgeInsets.all(5),
                        child: GestureDetector(
                          onTap: () {},
                          child: Icon(
                            CupertinoIcons.bell_fill,
                            color: Color(0xffffffff),
                            size: 25,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
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
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35))),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 20, top: 20, right: 20, bottom: 10),
                child: Center(
                  child: SizedBox(
                    width: screenWidth * 0.9,
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
                                        ).createShader(Rect.fromLTWH(
                                            0.0, 0.0, 200.0, 100.0)))),
                              TextSpan(text: 'PUSS today'),
                            ])),
                        SizedBox(
                          height: screenHeight * 0.02,
                        ),
                        Text(
                          "Hash Rate: 1.6P/Hr",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(
                          height: screenHeight * 0.03,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 120,
                            padding: EdgeInsets.fromLTRB(7, 10, 7, 10),
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [
                                    Color(0xff6366F1),
                                    Color(0xffFB31FF)
                                  ],
                                ),
                                border: Border.all(color: Color(0x604E868A)),
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Text(
                                "Start Mining",
                                softWrap: true,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: screenHeight * 0.03,
                        ),

                        // Middle line
                        Container(
                          width: screenWidth * 0.9,
                          height: screenHeight * 0.01,
                          decoration: BoxDecoration(
                              border: Border(
                                left: BorderSide(
                                    color: Color(0x604E868A), width: 1),
                                right: BorderSide(
                                    color: Color(0x604E868A), width: 1),
                                top: BorderSide(
                                    color: Color(0x604e868a), width: 3),
                                bottom: BorderSide(
                                    color: Color(0x604E868A), width: 0),
                              ),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30))),
                        ),

                        SizedBox(
                          height: screenHeight * 0.03,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Available Token Balance",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextField(
                              focusNode: FocusNode(),
                              enableInteractiveSelection: false,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(5),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide.none),
                                prefixIcon: Row(
                                  children: [
                                    Icon(
                                      CupertinoIcons.settings,
                                      color: Color(0xff6c64f2),
                                      size: 25,
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.01,
                                    ),
                                    Text(
                                      "38.501 PUSS",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 28,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                suffixIcon: Padding(
                                  padding: EdgeInsets.all(5),
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      width: 100,
                                      padding: EdgeInsets.fromLTRB(7, 8, 7, 8),
                                      decoration: BoxDecoration(
                                          color: Color(0xff7578ED)
                                              .withOpacity(0.4),
                                          border: Border.all(
                                              color: Color(0x604E868A)),
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
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
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: screenHeight * 0.03,
                        ),
                        Container(
                          width: screenWidth * 0.9,
                          height: screenHeight * 0.33,
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                  width: 180,
                                  padding: EdgeInsets.fromLTRB(7, 10, 7, 10),
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(137, 11, 11, 14),
                                      border:
                                          Border.all(color: Color(0x604E868A)),
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
                        SizedBox(
                          width: screenHeight * 0.05,
                        ),

                        //footer section
                        Padding(
                          padding: const EdgeInsets.only(top: 30, bottom: 10),
                          child: Center(
                            child: Container(
                              width: screenWidth * 0.5,
                              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Color(0x604E868A)),
                                  borderRadius: BorderRadius.circular(35)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    CupertinoIcons.bolt_fill,
                                    color: Color(0xff6C64F2),
                                    size: 35,
                                  ),
                                  Icon(
                                    CupertinoIcons.creditcard_fill,
                                    color: Color(0xff6C64F2),
                                    size: 35,
                                  ),
                                  Icon(
                                    CupertinoIcons.gear_solid,
                                    color: Color(0xff6C64F2),
                                    size: 35,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ]),
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
