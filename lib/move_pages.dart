import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:marquee/marquee.dart';
import 'package:noor/azkar/azkar.dart';
import 'package:noor/colors.dart';
import 'package:noor/counter/count.dart';
import 'package:noor/myWork/my_works.dart';
import 'package:noor/prayertime/prayerstimes.dart';
import 'package:noor/quranmp3/name.dart';
import 'package:noor/quranwritten/quranwritten.dart';
import 'package:noor/ramadan/adaya.dart';
import 'package:noor/ramadan/ramadanpages.dart';
import 'package:url_launcher/url_launcher.dart';

class movePages extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _movePagesState();
  }
}

class _movePagesState extends State<movePages> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return WillPopScope(
      // ignore: missing_return
      onWillPop: () {
        SystemNavigator.pop();
      },
      child: Scaffold(
        backgroundColor: backColor,
        body: Center(
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  height: 50,
                  child: Marquee(
                    text: "نرجو الدعاء وقراءة الفاتحة على روح نورا حسني",
                    blankSpace: 20,
                    velocity: 40,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                    textDirection: TextDirection.rtl,
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: [
                        InkWell(
                          customBorder: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Container(
                            decoration: BoxDecoration(shape: BoxShape.circle),
                            child: Image.asset(
                              "assets/images/c.png",
                              height: height * 0.1,
                              width: width * 0.2,
                            ),
                            padding: EdgeInsets.only(top: 10, bottom: 10),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => name()));
                          },
                        ),
                        Text("استماع القراءن",
                            style: TextStyle(color: Colors.white))
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        InkWell(
                          customBorder: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Container(
                            decoration: BoxDecoration(shape: BoxShape.circle),
                            child: Image.asset(
                              "assets/images/f.png",
                              height: height * 0.1,
                              width: width * 0.2,
                            ),
                            padding: EdgeInsets.only(top: 10, bottom: 10),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => quranList()));
                          },
                        ),
                        Text("القراءن الكريم",
                            style: TextStyle(color: Colors.white))
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: [
                        InkWell(
                          customBorder: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Container(
                            decoration: BoxDecoration(shape: BoxShape.circle),
                            child: Image.asset(
                              "assets/images/b.png",
                              height: height * 0.1,
                              width: width * 0.2,
                            ),
                            padding: EdgeInsets.only(top: 10, bottom: 10),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => prayertimes()));
                          },
                        ),
                        Text("مواعيد الصلاة",
                            style: TextStyle(color: Colors.white))
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        InkWell(
                          customBorder: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Container(
                            decoration: BoxDecoration(shape: BoxShape.circle),
                            child: Image.asset(
                              "assets/images/d.png",
                              height: height * 0.1,
                              width: width * 0.2,
                            ),
                            padding: EdgeInsets.only(top: 10, bottom: 10),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => azkar()));
                          },
                        ),
                        Text("اذكار", style: TextStyle(color: Colors.white))
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: [
                        InkWell(
                          customBorder: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Container(
                            decoration: BoxDecoration(shape: BoxShape.circle),
                            child: Image.asset(
                              "assets/images/e.png",
                              height: height * 0.1,
                              width: width * 0.2,
                            ),
                            padding: EdgeInsets.only(top: 10, bottom: 10),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Counter()));
                          },
                        ),
                        Text("مسبحة الكترونية",
                            style: TextStyle(color: Colors.white))
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        InkWell(
                          customBorder: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Container(
                            decoration: BoxDecoration(shape: BoxShape.circle),
                            child: Image.asset(
                              "assets/images/images.png",
                              height: height * 0.1,
                              width: width * 0.2,
                            ),
                            padding: EdgeInsets.only(top: 10, bottom: 10),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => myWorks()));
                          },
                        ),
                        Text("أعمالنا", style: TextStyle(color: Colors.white))
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: [
                        InkWell(
                            customBorder: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Container(
                              decoration: BoxDecoration(shape: BoxShape.circle),
                              child: Image.asset(
                                "assets/images/q.png",
                                height: height * 0.1,
                                width: width * 0.2,
                              ),
                              padding: EdgeInsets.only(top: 10, bottom: 10),
                            ),
                            onTap: send),
                        Text("تواصل معنا",
                            style: TextStyle(color: Colors.white))
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> send() async {
    final Email email = Email(
      body: "",
      subject: "",
      recipients: ["xcodeteam99@gmail.com"],
    );

    String platformResponse;

    try {
      await FlutterEmailSender.send(email);
      platformResponse = 'success';
    } catch (error) {
      platformResponse = error.toString();
    }

    if (!mounted) return;
  }

  _launchURL() async {
    const url = 'https://mail.google.com/mail/u/0/?tab=wm#inbox';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
