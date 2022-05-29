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
                title: Text("رمضانك",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontFamily: "MO_Nawel",
                    )),
              ),
            backgroundColor: Colors.transparent,
              body: Center(
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
                                  "assets/ea.png",
                                ),
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          )),
                      Text("إمساكية رمضان",
                          style: TextStyle(color: Colors.white, fontSize: 18))
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DaysOfRamadan()));
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
                                  "assets/ab.png",
                                ),
                              ),
                              borderRadius: BorderRadius.circular(35),
                            ),
                          )),
                      Text("أدعية رمضان",
                          style: TextStyle(color: Colors.white, fontSize: 18))
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AtaytRamadan()));
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
                                  "assets/ramadan1.jpg",
                                ),
                              ),
                              borderRadius: BorderRadius.circular(35),
                            ),
                          )),
                      Text("تواشيح وابتهالات",
                          style: TextStyle(color: Colors.white, fontSize: 18))
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => RamadanMp3()));
                  },
                ),
              ],
            ),
          )),
        ),
      ),
    );
  }
}
