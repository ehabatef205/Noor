import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:location/location.dart';
import 'package:noor/azkar/azkar.dart';
import 'package:noor/counter/count.dart';
import 'package:noor/myWork/my_works.dart';
import 'package:noor/prayertime/prayerstimes.dart';
import 'package:noor/quranmp3/name.dart';
import 'package:noor/quranwritten/quranwritten.dart';
import 'package:noor/ramadan/ramadanpages.dart';
import 'package:shared_preferences/shared_preferences.dart';

class movePages extends StatefulWidget {
  final bool ramadan;

  const movePages({this.ramadan});

  @override
  State<StatefulWidget> createState() {
    return _movePagesState();
  }
}

class _movePagesState extends State<movePages> {
  bool _serviceEnabled;
  PermissionStatus _permissionGranted;
  LocationData _userLocation;
  int alarmId = 1;
  double _originLatitude;
  double _originLongitude;

  Future<void> _getUserLocation() async {
    Location location = Location();

    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }

    // Check if permission is granted
    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    final _locationData = await location.getLocation();
    setState(() {
      _userLocation = _locationData;
      _originLatitude = _locationData.latitude;
      _originLongitude = _locationData.longitude;
    });

    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    sharedPreferences.setDouble("Latitude", _originLatitude);
    sharedPreferences.setDouble("Longitude", _originLongitude);

    if (_originLatitude == null) {
      setState(() {
        _originLatitude = 30.033333;
        _originLongitude = 31.233334;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _getUserLocation();
  }

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
        body: widget.ramadan
            ? Container(
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
                  child: Center(
                    child: ListView(
                      shrinkWrap: true,
                      children: <Widget>[
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
                                      decoration:
                                          BoxDecoration(shape: BoxShape.circle),
                                      child: Image.asset(
                                        "assets/images/c.png",
                                        height: height * 0.1,
                                        width: width * 0.2,
                                      ),
                                      padding:
                                          EdgeInsets.only(top: 10, bottom: 10),
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
                                      decoration:
                                          BoxDecoration(shape: BoxShape.circle),
                                      child: Image.asset(
                                        "assets/images/f.png",
                                        height: height * 0.1,
                                        width: width * 0.2,
                                      ),
                                      padding:
                                          EdgeInsets.only(top: 10, bottom: 10),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  quranList()));
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
                                      decoration:
                                          BoxDecoration(shape: BoxShape.circle),
                                      child: Image.asset(
                                        "assets/images/b.png",
                                        height: height * 0.1,
                                        width: width * 0.2,
                                      ),
                                      padding:
                                          EdgeInsets.only(top: 10, bottom: 10),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  prayertimes()));
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
                                      decoration:
                                          BoxDecoration(shape: BoxShape.circle),
                                      child: Image.asset(
                                        "assets/images/d.png",
                                        height: height * 0.1,
                                        width: width * 0.2,
                                      ),
                                      padding:
                                          EdgeInsets.only(top: 10, bottom: 10),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => azkar()));
                                    },
                                  ),
                                  Text("اذكار",
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
                                      decoration:
                                          BoxDecoration(shape: BoxShape.circle),
                                      child: Image.asset(
                                        "assets/images/e.png",
                                        height: height * 0.1,
                                        width: width * 0.2,
                                      ),
                                      padding:
                                          EdgeInsets.only(top: 10, bottom: 10),
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
                                      height: height * 0.1,
                                      width: width * 0.2,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                              "assets/logoramadan.png",
                                            ),
                                          ),
                                          shape: BoxShape.circle),
                                      padding:
                                          EdgeInsets.only(top: 10, bottom: 10),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  RamadanPages()));
                                    },
                                  ),
                                  Text("رمضان كريم",
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
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle),
                                        child: Image.asset(
                                          "assets/images/q.png",
                                          height: height * 0.1,
                                          width: width * 0.2,
                                        ),
                                        padding: EdgeInsets.only(
                                            top: 10, bottom: 10),
                                      ),
                                      onTap: send),
                                  Text("تواصل معنا",
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
                                      decoration:
                                          BoxDecoration(shape: BoxShape.circle),
                                      child: Image.asset(
                                        "assets/images/images.png",
                                        height: height * 0.1,
                                        width: width * 0.2,
                                      ),
                                      padding:
                                          EdgeInsets.only(top: 10, bottom: 10),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => myWorks()));
                                    },
                                  ),
                                  Text("أعمالنا",
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
              )
            : Container(
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
                  child: Center(
                    child: ListView(
                      shrinkWrap: true,
                      children: <Widget>[
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
                                      decoration:
                                          BoxDecoration(shape: BoxShape.circle),
                                      child: Image.asset(
                                        "assets/images/c.png",
                                        height: height * 0.1,
                                        width: width * 0.2,
                                      ),
                                      padding:
                                          EdgeInsets.only(top: 10, bottom: 10),
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
                                      decoration:
                                          BoxDecoration(shape: BoxShape.circle),
                                      child: Image.asset(
                                        "assets/images/f.png",
                                        height: height * 0.1,
                                        width: width * 0.2,
                                      ),
                                      padding:
                                          EdgeInsets.only(top: 10, bottom: 10),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  quranList()));
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
                                      decoration:
                                          BoxDecoration(shape: BoxShape.circle),
                                      child: Image.asset(
                                        "assets/images/b.png",
                                        height: height * 0.1,
                                        width: width * 0.2,
                                      ),
                                      padding:
                                          EdgeInsets.only(top: 10, bottom: 10),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  prayertimes()));
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
                                      decoration:
                                          BoxDecoration(shape: BoxShape.circle),
                                      child: Image.asset(
                                        "assets/images/d.png",
                                        height: height * 0.1,
                                        width: width * 0.2,
                                      ),
                                      padding:
                                          EdgeInsets.only(top: 10, bottom: 10),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => azkar()));
                                    },
                                  ),
                                  Text("اذكار",
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
                                      decoration:
                                          BoxDecoration(shape: BoxShape.circle),
                                      child: Image.asset(
                                        "assets/images/e.png",
                                        height: height * 0.1,
                                        width: width * 0.2,
                                      ),
                                      padding:
                                          EdgeInsets.only(top: 10, bottom: 10),
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
                                      decoration:
                                          BoxDecoration(shape: BoxShape.circle),
                                      child: Image.asset(
                                        "assets/images/images.png",
                                        height: height * 0.1,
                                        width: width * 0.2,
                                      ),
                                      padding:
                                          EdgeInsets.only(top: 10, bottom: 10),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => myWorks()));
                                    },
                                  ),
                                  Text("أعمالنا",
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
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle),
                                        child: Image.asset(
                                          "assets/images/q.png",
                                          height: height * 0.1,
                                          width: width * 0.2,
                                        ),
                                        padding: EdgeInsets.only(
                                            top: 10, bottom: 10),
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
}