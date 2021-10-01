import 'package:flutter/material.dart';
import 'package:noor/ramadan/adaya.dart';
import 'package:noor/ramadan/daysoframadan.dart';
import 'package:noor/ramadan/ramadanmp3.dart';

class RamadanPages extends StatefulWidget {
  @override
  _RamadanPagesState createState() => _RamadanPagesState();
}

class _RamadanPagesState extends State<RamadanPages> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/a.jpg"), fit: BoxFit.fill)),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  FlatButton(
                    child: Column(
                      children: <Widget>[
                        Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Container(
                              height: height * 0.15,
                              width: width * 0.3,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "assets/images/emsakaytRamadan.jpg",
                                    ),
                                  ),
                                  shape: BoxShape.circle),
                            )),
                        Text("إمساكية رمضان",
                            style: TextStyle(color: Colors.white, fontSize: 18))
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) => DaysOfRamadan()));
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  FlatButton(
                    child: Column(
                      children: <Widget>[
                        Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Container(
                              height: height * 0.15,
                              width: width * 0.3,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "assets/images/ataya.jpg",
                                    ),
                                  ),
                                  shape: BoxShape.circle),
                            )),
                        Text("أدعية رمضان",
                            style: TextStyle(color: Colors.white, fontSize: 18))
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) => AtaytRamadan()));
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  FlatButton(
                    child: Column(
                      children: <Widget>[
                        Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Container(
                              height: height * 0.15,
                              width: width * 0.3,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      "assets/images/ramadan1.jpg",
                                    ),
                                  ),
                                  shape: BoxShape.circle),
                            )),
                        Text("تواشيح وابتهالات",
                            style: TextStyle(color: Colors.white, fontSize: 18))
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) => RamadanMp3()));
                    },
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
