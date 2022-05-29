import 'dart:async';

import 'package:flutter/material.dart';
import 'package:noor/colors.dart';
import 'package:noor/move_pages.dart';
import 'package:shared_preferences/shared_preferences.dart';

class splashScreen extends StatefulWidget {
  _splashScreenState createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  bool ramadan = false;

  @override
  void initState() {
    super.initState();
    if (DateTime.now().isAfter(DateTime(2022, 04, 01, 00, 00, 00)) &&
        DateTime.now().isBefore(DateTime(2022, 05, 01, 23, 59, 59))) {
      setState(() {
        ramadan = true;
      });
      Timer(Duration(seconds: 5), () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => movePages(
                      ramadan: true,
                    )));
      });
    } else {
      Timer(Duration(seconds: 5), () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => movePages(
                      ramadan: false,
                    )));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: backColor,
      body: Center(
        child: SingleChildScrollView(
          child: ramadan
              ? Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          height: height,
                          width: width,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/r.jpg"),
                                  fit: BoxFit.fill)),
                        ),
                        Column(
                          children: [
                            Container(
                              width: width * 0.6,
                              height: height * 0.2,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assets/ram.png",
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              "تطبيق نور",
                              style: TextStyle(
                                  color: Color.fromRGBO(213, 121, 25, 1),
                                  fontFamily: "MO_Nawel",
                                  fontSize: 30),
                            ),
                          ],
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Text(
                        "BY X-CODE",
                        style: TextStyle(
                            color: Color.fromRGBO(213, 121, 25, 1),
                            fontFamily: "MO_Nawel",
                            fontSize: 20),
                      ),
                    )
                  ],
                )
              : Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      height: height,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: width * 0.5,
                            height: height * 0.3,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/icon.png",
                                ),
                              ),
                            ),
                          ),
                          Text(
                            "تطبيق نور",
                            style: TextStyle(
                                color: Colors.teal,
                                fontFamily: "MO_Nawel",
                                fontSize: 30),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "BY X-CODE",
                        style: TextStyle(
                            color: Colors.teal,
                            fontFamily: "MO_Nawel",
                            fontSize: 20),
                      ),
                    )
                  ],
                ),
        ),
      ),
    );
  }
}
