import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

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
              padding: const EdgeInsets.only(
                  left: 20, top: 50, right: 20, bottom: 10),
              child: Center(
                child: SizedBox(
                  width: screenWidth * 0.9,
                  child: TextField(
                    enabled: false,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(5),
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      prefixIcon: Text(
                        "Wallet",
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
            Center(
              child: SizedBox(
                width: screenWidth * 0.9,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.fromLTRB(7, 10, 7, 10),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(137, 11, 11, 14),
                          border: Border.all(color: Color(0x604E868A)),
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            CupertinoIcons.exclamationmark_circle,
                            color: Color(0xff6C64F2),
                            size: 16,
                          ),
                          SizedBox(
                            width: screenWidth * 0.02,
                          ),
                          Text(
                            "PUSS Token withdrawals is coming soon",
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
                      height: screenHeight * 0.02,
                    ),
                    Container(
                      width: screenWidth * 0.9,
                      height: screenHeight * 0.01,
                      decoration: BoxDecoration(
                          border: Border(
                            left:
                                BorderSide(color: Color(0x604E868A), width: 1),
                            right:
                                BorderSide(color: Color(0x604E868A), width: 1),
                            top: BorderSide(color: Color(0x604e868a), width: 3),
                            bottom:
                                BorderSide(color: Color(0x604E868A), width: 0),
                          ),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30))),
                    ),
                    SizedBox(
                      height: screenHeight * 0.02,
                    ),
                    RichText(
                        text: TextSpan(
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w300,
                            ),
                            children: [
                          TextSpan(text: 'Available Token Balance \n'),
                          TextSpan(
                              text: '14,019 ',
                              style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.w400,
                                  foreground: Paint()
                                    ..shader = LinearGradient(
                                      colors: <Color>[
                                        Color(0xff6366F1),
                                        Color(0xffFB31FF)
                                        //add more color here.
                                      ],
                                    ).createShader(Rect.fromLTWH(
                                        0.0, 0.0, 200.0, 100.0)))),
                          TextSpan(
                              text: 'PUSS',
                              style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.w400,
                              )),
                        ])),
                    SizedBox(
                      height: screenHeight * 0.02,
                    ),
                    Container(
                      width: 150,
                      padding: EdgeInsets.fromLTRB(2, 10, 2, 10),
                      decoration: BoxDecoration(
                          color: Color(0xff7578ED).withOpacity(0.4),
                          border: Border.all(color: Color(0x604E868A)),
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            CupertinoIcons.creditcard_fill,
                            color: Color(0xff6C64F2),
                            size: 16,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Withdraw",
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
                      height: screenHeight * 0.05,
                    ),
                    Text(
                      "Withdrawal History",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: screenHeight * 0.1,
                    ),
                    Center(
                      child: Icon(
                        CupertinoIcons.archivebox_fill,
                        color: Color(0xff6C64F2),
                        size: 60,
                      ),
                    ),
                    Center(
                      child: Text(
                        "No withdrawals made yet",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
