import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:noor/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class myWorks extends StatefulWidget {
  @override
  _myWorksState createState() => _myWorksState();
}

class _myWorksState extends State<myWorks> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: backColor,
          title: Text("أعمالنا",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontFamily: "MO_Nawel",
              )),
        ),
        backgroundColor: backColor,
        body: Center(
          child: ListView(
            shrinkWrap: true,
            children: [
              Column(
                children: [
                  FlatButton(
                      child: Container(
                          height: height * 0.15,
                          width: width * 0.3,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/quicknote.png"),
                                  fit: BoxFit.fill))),
                      onPressed: _launchURL1),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Text("Quick Note",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            decoration: TextDecoration.none)),
                  )
                ],
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Column(
                children: [
                  FlatButton(
                      child: Container(
                          height: height * 0.13,
                          width: width * 0.4,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage("assets/images/diamond.jpg"),
                                  fit: BoxFit.fill))),
                      onPressed: _launchURL2),
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    child: Text("Diamond",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            decoration: TextDecoration.none)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  _launchURL1() async {
    const url =
        'https://play.google.com/store/apps/details?id=com.xcodeteam.quicknote&fbclid=IwAR2GaMnem6lc6hY9t5QN64CFZRydBtmrw6nMnerrPU3ifLhdbY2QA-C5Lys';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _launchURL2() async {
    const url =
        'https://www.mediafire.com/file/bm4dnkkh5djd4wd/app-armeabi-v7a-release.apk/file?fbclid=IwAR37oOkgZ3T0LchAL7pzAnDMy6n8Fvvt2qs7C__juDrq0wdr8koELnGPoCo';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
