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

  List<String> day;

  List<String> time;

  @override
  void initState() {
    super.initState();
    setState(() {
      day = [
        "إمساك",
        "الفجر",
        "الظهر",
        "العصر",
        "المغرب",
        "العشاء",
      ];

      time = [
        day1[4],
        day1[5],
        day1[6],
        day1[7],
        day1[8],
        day1[9],
      ];
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/s.jpg"), fit: BoxFit.fill)),
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.2),
          ),
          child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: Text("${day1[0]} رمضان",
                  style: TextStyle(
                    color: Colors.white,
                  )),
            ),
            backgroundColor: Colors.transparent,
            body: Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/ramadan9.png",
                      width: width * 0.4,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Center(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "${day1[0]}",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontFamily: "Amiri"),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                " رمضان",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontFamily: "Amiri"),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          )),
                          Center(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "${day1[3]}",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontFamily: "Amiri"),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                " ${day1[2]}",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontFamily: "Amiri"),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                " ${day1[1]}",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25,
                                    fontFamily: "Amiri"),
                                textAlign: TextAlign.center,
                              )
                            ],
                          )),
                          SizedBox(
                            height: height * 0.03,
                          ),
                          Container(
                            height: height * 0.3,
                            child: GridView.builder(
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                childAspectRatio: 1.1,
                              ),
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: day.length,
                              itemBuilder: (context, index) => Padding(
                                padding: const EdgeInsets.all(15),
                                child: Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage("assets/back2.jpg"),
                                        fit: BoxFit.fill),
                                  ),
                                  child: Column(
                                    children: [
                                      Text(
                                        day[index],
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 25,
                                            color: Colors.white,
                                            fontFamily: "Amiri",
                                            shadows: [
                                              Shadow(
                                                  // bottomLeft
                                                  offset: Offset(-1, -1),
                                                  color: Colors.black),
                                            ]),
                                      ),
                                      Text(
                                        time[index],
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.white),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Container(
                          height: height * 0.22,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/back1.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.5)
                            ),
                            child: Center(
                              child: Text(
                                day1[10],
                                style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.white,
                                    fontFamily: "Amiri",
                                    shadows: [
                                      Shadow(
                                        // bottomLeft
                                        offset: Offset(-0.5, -0.5),
                                        color: Colors.black,
                                      ),
                                    ]),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/*
Center(
                            child: Padding(
                          padding: const EdgeInsets.only(left: 30, right: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Center(
                                child: Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("assets/back2.jpg"),
                                          fit: BoxFit.fill)),
                                  child: Column(
                                    children: [
                                      Text(
                                        "إمساك",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 25,
                                            color: Colors.white,
                                            fontFamily: "Amiri",
                                            shadows: [
                                              Shadow(
                                                  // bottomLeft
                                                  offset: Offset(-1, -1),
                                                  color: Colors.black),
                                            ]),
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
                                          color: Colors.lightBlueAccent
                                              .withOpacity(0.5)),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10, right: 10),
                                        child: Text(
                                          "الفجر",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 25,
                                              color: Colors.white,
                                              fontFamily: "Amiri",
                                              shadows: [
                                                Shadow(
                                                    // bottomLeft
                                                    offset: Offset(-1, -1),
                                                    color: Colors.black),
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
                                          color: Colors.lightBlueAccent
                                              .withOpacity(0.5)),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10, right: 10),
                                        child: Text(
                                          "الظهر",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 25,
                                              color: Colors.white,
                                              fontFamily: "Amiri",
                                              shadows: [
                                                Shadow(
                                                    // bottomLeft
                                                    offset: Offset(-1, -1),
                                                    color: Colors.black),
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
                                          color: Colors.lightBlueAccent
                                              .withOpacity(0.5)),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10, right: 10),
                                        child: Text(
                                          "العصر",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 25,
                                              color: Colors.white,
                                              fontFamily: "Amiri",
                                              shadows: [
                                                Shadow(
                                                    // bottomLeft
                                                    offset: Offset(-1, -1),
                                                    color: Colors.black),
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
                                          color: Colors.lightBlueAccent
                                              .withOpacity(0.5)),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10, right: 10),
                                        child: Text(
                                          "المغرب",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 25,
                                              color: Colors.white,
                                              fontFamily: "Amiri",
                                              shadows: [
                                                Shadow(
                                                    // bottomLeft
                                                    offset: Offset(-1, -1),
                                                    color: Colors.black),
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
                                          color: Colors.lightBlueAccent
                                              .withOpacity(0.5)),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 10, right: 10),
                                        child: Text(
                                          "العشاء",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 25,
                                              color: Colors.white,
                                              fontFamily: "Amiri",
                                              shadows: [
                                                Shadow(
                                                    // bottomLeft
                                                    offset: Offset(-1, -1),
                                                    color: Colors.black),
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
 */
