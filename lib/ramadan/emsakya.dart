import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Emsakya extends StatefulWidget {

  final List<String> day1;

  Emsakya(this.day1);

  @override
  _EmsakyaState createState() => _EmsakyaState(this.day1);
}

class _EmsakyaState extends State<Emsakya> {

  List<String> day1;

  _EmsakyaState(this.day1);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/ramadan8.png"),
                      fit: BoxFit.fill)),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset("assets/images/ramadan9.png", width: width * 0.6,),
                  Container(
                    child: Column(
                      children: [
                        Center(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "رمضان",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25, fontFamily: "Amiri"),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "  ${day1[0]}",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25, fontFamily: "Amiri"),
                              textAlign: TextAlign.center,
                            )
                          ],
                        )),
                        Center(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "${day1[1]}",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25, fontFamily: "Amiri"),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "  ${day1[2]}",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25, fontFamily: "Amiri"),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              "  ${day1[3]}",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25, fontFamily: "Amiri"),
                              textAlign: TextAlign.center,
                            )
                          ],
                        )),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        Center(
                            child: Padding(
                          padding: const EdgeInsets.only(left: 30, right: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Center(
                                child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          color: Colors.lightBlueAccent.withOpacity(0.5)),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10, right: 10),
                                        child: Text(
                                          "الظهر",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 25,
                                              color: Colors.white, fontFamily: "Amiri",
                                              shadows: [
                                                Shadow( // bottomLeft
                                                    offset: Offset(-1, -1),
                                                    color: Colors.black
                                                ),
                                              ]),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      "${day1[4]}",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 25,
                              ),
                              Center(
                                child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          color: Colors.lightBlueAccent.withOpacity(0.5)),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10, right: 10),
                                        child: Text(
                                          "الفجر",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 25,
                                              color: Colors.white, fontFamily: "Amiri",
                                              shadows: [
                                                Shadow( // bottomLeft
                                                    offset: Offset(-1, -1),
                                                    color: Colors.black
                                                ),
                                              ]),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "${day1[5]}",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 25,
                              ),
                              Center(
                                child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          color: Colors.lightBlueAccent.withOpacity(0.5)),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10, right: 10),
                                        child: Text(
                                          "إمساك",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 25,
                                              color: Colors.white, fontFamily: "Amiri",
                                              shadows: [
                                                Shadow( // bottomLeft
                                                    offset: Offset(-1, -1),
                                                    color: Colors.black
                                                ),
                                              ]),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "${day1[6]}",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )),
                        SizedBox(
                          height: height * 0.03,
                        ),
                        Center(
                            child: Padding(
                          padding: const EdgeInsets.only(left: 30, right: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Center(
                                child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          color: Colors.lightBlueAccent.withOpacity(0.5)),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10, right: 10),
                                        child: Text(
                                          "العشاء",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 25,
                                              color: Colors.white, fontFamily: "Amiri",
                                              shadows: [
                                                Shadow( // bottomLeft
                                                    offset: Offset(-1, -1),
                                                    color: Colors.black
                                                ),
                                              ]),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "${day1[7]}",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 25,
                              ),
                              Center(
                                child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          color: Colors.lightBlueAccent.withOpacity(0.5)),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10, right: 10),
                                        child: Text(
                                          "المغرب",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 25,
                                              color: Colors.white, fontFamily: "Amiri",
                                              shadows: [
                                                Shadow( // bottomLeft
                                                    offset: Offset(-1, -1),
                                                    color: Colors.black
                                                ),
                                              ]),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "${day1[8]}",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 25,
                              ),
                              Center(
                                child: Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          color: Colors.lightBlueAccent.withOpacity(0.5)),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10, right: 10),
                                        child: Text(
                                          "العصر",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 25,
                                              color: Colors.white, fontFamily: "Amiri",
                                              shadows: [
                                                Shadow( // bottomLeft
                                                    offset: Offset(-1, -1),
                                                    color: Colors.black
                                                ),
                                              ]),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "${day1[9]}",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ))
                      ],
                    ),
                  ),
                  SizedBox(height: height * 0.05,),
                  Container(
                    child: Column(
                      children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 50, right: 50),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Color(0xFFeeba2b)),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: Text(
                                  "${day1[10]}",
                                  style: TextStyle(
                                      fontSize: 22, color: Colors.black, fontFamily: "Amiri",
                                      shadows: [
                                        Shadow( // bottomLeft
                                            offset: Offset(-0.5, -0.5),
                                            color: Colors.white
                                        ),
                                      ]
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: height * 0.05,)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
