import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:intl/intl.dart';
import 'package:adhan/adhan.dart';
import 'dart:ui' as ui;

import 'package:shared_preferences/shared_preferences.dart';

class prayertimes extends StatefulWidget {
  @override
  _prayertimesState createState() => _prayertimesState();
}

class _prayertimesState extends State<prayertimes> {
  double latitude = 30.033333;
  double longitude = 31.233334;

  double _originLatitude;
  double _originLongitude;

  bool isDone = false;

  DateTime fajr;
  DateTime sunrise;
  DateTime dhuhr;
  DateTime asr;
  DateTime maghrib;
  DateTime isha;
  String _timeString;

  String nextPrayer = "";

  int second = 0;
  int minute = 0;
  int hours = 0;

  String _date;

  DateTime nowTime = DateTime.now();

  Future getLocation() async {
    final SharedPreferences sharedPreferences =
    await SharedPreferences.getInstance();
    var _latitude = sharedPreferences.getDouble("Latitude");
    var _longitude = sharedPreferences.getDouble("Longitude");
    _originLatitude = _latitude;
    _originLongitude = _longitude;
  }

  void getPrayers() {
    Timer.periodic(Duration(seconds: 1), (Timer t) {
      DateTime now = DateTime.now();
      try {
        if (fajr.isAfter(DateTime.now())) {
          setState(() {
            nextPrayer = "الفجر";
          });
          second = fajr.difference(now).inSeconds % 60;
          minute = fajr.difference(now).inMinutes % 60;
          hours = fajr.difference(now).inHours;
        } else if (sunrise.isAfter(DateTime.now())) {
          setState(() {
            nextPrayer = "الشروق";
          });
          second = sunrise.difference(now).inSeconds % 60;
          minute = sunrise.difference(now).inMinutes % 60;
          hours = sunrise.difference(now).inHours;
        } else if (dhuhr.isAfter(DateTime.now())) {
          setState(() {
            nextPrayer = "الظهر";
          });
          second = dhuhr.difference(now).inSeconds % 60;
          second = dhuhr.difference(now).inSeconds % 60;
          minute = dhuhr.difference(now).inMinutes % 60;
          hours = dhuhr.difference(now).inHours;
        } else if (asr.isAfter(DateTime.now())) {
          setState(() {
            nextPrayer = "العصر";
          });
          second = asr.difference(now).inSeconds % 60;
          minute = asr.difference(now).inMinutes % 60;
          hours = asr.difference(now).inHours;
        } else if (maghrib.isAfter(DateTime.now())) {
          setState(() {
            nextPrayer = "المغرب";
          });
          second = maghrib.difference(now).inSeconds % 60;
          minute = maghrib.difference(now).inMinutes % 60;
          hours = maghrib.difference(now).inHours;
        } else if (isha.isAfter(DateTime.now())) {
          setState(() {
            nextPrayer = "العشاء";
          });
          second = isha.difference(now).inSeconds % 60;
          minute = isha.difference(now).inMinutes % 60;
          hours = isha.difference(now).inHours;
        } else {
          setState(() {
            nextPrayer = "الفجر";
          });
          int a = fajr.difference(now).inSeconds;
          int b = fajr.difference(now).inMinutes;
          int c = fajr.difference(now).inHours;

          second = (86400 + a) % 60;
          minute = (1440 + b) % 60;
          hours = (23 + c);
        }
      } catch (Ex) {}
    });
  }

  @override
  void initState() {
    getLocation().whenComplete((){
      if(_originLatitude == null){
        setState(() {
          latitude = 30.033333;
          longitude = 31.233334;
          isDone = true;
        });
        getPrayers();
      }else{
        setState(() {
          latitude = _originLatitude;
          longitude = _originLongitude;
          isDone = true;
        });
        getPrayers();
      }
      print(latitude);
      print(longitude);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Directionality(
      textDirection: ui.TextDirection.rtl,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            image:DecorationImage(
                image: AssetImage("assets/s.jpg"),
                fit: BoxFit.fill
            )
        ),
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.2),
          ),
          child: Scaffold(
            appBar: AppBar(
              title: Text(
                "مواعيد الصلاة",
                style: TextStyle(
                    fontFamily: "MO_Nawel",
                    fontSize: height * .05,
                    color: Colors.white,
                ),
              ),
              centerTitle: true,
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            backgroundColor: Colors.transparent,
            body: isDone? Center(
              child: ListView(
                shrinkWrap: true,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: height * .095,
                        width: width * .7,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white.withOpacity(.1)),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Text(
                                  "باقي على صلاة $nextPrayer",
                                  style: TextStyle(
                                      fontFamily: "MO_Nawel",
                                      fontSize: height * .03,
                                      color: Colors.white),
                                ),
                              ),
                              Expanded(
                                child: Text.rich(TextSpan(children: [
                                  TextSpan(
                                    text: hours < 10 ? "0$hours:" : "$hours:",
                                    style: TextStyle(
                                        fontFamily: "MO_Nawel",
                                        fontSize: height * .03,
                                        color: Colors.white),
                                  ),
                                  TextSpan(
                                    text: minute < 10 ? "0$minute:" : "$minute:",
                                    style: TextStyle(
                                        fontFamily: "MO_Nawel",
                                        fontSize: height * .03,
                                        color: Colors.white),
                                  ),
                                  TextSpan(
                                    text: second < 10 ? "0$second" : "$second",
                                    style: TextStyle(
                                        fontFamily: "MO_Nawel",
                                        fontSize: height * .03,
                                        color: Colors.white),
                                  )
                                ])),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: height * .02,
                  ),
                  singlePrayerTime(context, "الفجر", getTodayFajrTime),
                  SizedBox(
                    height: height * .02,
                  ),
                  singlePrayerTime(context, "الشروق", getTodaySunriseTime),
                  SizedBox(
                    height: height * .02,
                  ),
                  singlePrayerTime(context, "الظهر", getTodayDhuhrTime),
                  SizedBox(
                    height: height * .02,
                  ),
                  singlePrayerTime(context, "العصر", getTodayAsrTime),
                  SizedBox(
                    height: height * .02,
                  ),
                  singlePrayerTime(context, "المغرب", getTodayMaghribTime),
                  SizedBox(
                    height: height * .02,
                  ),
                  singlePrayerTime(context, "العشاء", getTodayIshaTime),
                  SizedBox(
                    height: height * .02,
                  ),
                ],
              ),
            ) : Center(child: CircularProgressIndicator(color: Colors.teal,),),
          ),
        ),
      ),
    );
  }

  Widget singlePrayerTime(
      BuildContext context, String prayerTime, Function time) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: height * .08,
          width: width * .9,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white.withOpacity(.1),
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      prayerTime,
                      style: TextStyle(
                          fontFamily: "MO_Nawel",
                          fontSize: height * .03,
                          color: Colors.white),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    child: FutureBuilder(
                      future: time(),
                      builder: (context, AsyncSnapshot<DateTime> snapshot) {
                        if (snapshot.hasData) {
                          final dateTime = snapshot.data.toLocal();
                          return Text(DateFormat.jm().format(dateTime),
                              style: TextStyle(
                                  fontFamily: "MO_Nawel",
                                  fontSize: height * .03,
                                  color: Colors.white));
                        } else if (snapshot.hasError) {
                          return Text(snapshot.error.toString());
                        } else {
                          return Text('Waiting...');
                        }
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Future<DateTime> getTodayFajrTime() async {
    final egypt = Coordinates(latitude, longitude);
    final nyUtcOffset = Duration(hours: 0);
    final nyDate = DateComponents(DateTime.now().year, DateTime.now().month, DateTime.now().day);
    final nyParams = CalculationMethod.egyptian.getParameters();
    nyParams.madhab = Madhab.shafi;
    final nyPrayerTimes =
        PrayerTimes(egypt, nyDate, nyParams, utcOffset: nyUtcOffset);
    fajr = await nyPrayerTimes.fajr;
    return await nyPrayerTimes.fajr;
  }

  Future<DateTime> getTodaySunriseTime() async {
    final egypt = Coordinates(latitude, longitude);
    final nyUtcOffset = Duration(hours: 0);
    final nyDate = DateComponents(DateTime.now().year, DateTime.now().month, DateTime.now().day);
    final nyParams = CalculationMethod.egyptian.getParameters();
    nyParams.madhab = Madhab.shafi;
    final nyPrayerTimes =
        PrayerTimes(egypt, nyDate, nyParams, utcOffset: nyUtcOffset);
    sunrise = await nyPrayerTimes.sunrise;
    return await nyPrayerTimes.sunrise;
  }

  Future<DateTime> getTodayDhuhrTime() async {
    final egypt = Coordinates(latitude, longitude);
    final nyUtcOffset = Duration(hours: 0);
    final nyDate = DateComponents(DateTime.now().year, DateTime.now().month, DateTime.now().day);
    final nyParams = CalculationMethod.egyptian.getParameters();
    nyParams.madhab = Madhab.shafi;
    final nyPrayerTimes =
        PrayerTimes(egypt, nyDate, nyParams, utcOffset: nyUtcOffset);
    dhuhr = await nyPrayerTimes.dhuhr.subtract(Duration(minutes: 1));
    return await nyPrayerTimes.dhuhr.subtract(Duration(minutes: 1));
  }

  Future<DateTime> getTodayAsrTime() async {
    final egypt = Coordinates(latitude, longitude);
    final nyUtcOffset = Duration(hours: 0);
    final nyDate = DateComponents(DateTime.now().year, DateTime.now().month, DateTime.now().day);
    final nyParams = CalculationMethod.egyptian.getParameters();
    nyParams.madhab = Madhab.shafi;
    final nyPrayerTimes =
        PrayerTimes(egypt, nyDate, nyParams, utcOffset: nyUtcOffset);
    asr = await nyPrayerTimes.asr;
    return await nyPrayerTimes.asr;
  }

  Future<DateTime> getTodayMaghribTime() async {
    final egypt = Coordinates(latitude, longitude);
    final nyUtcOffset = Duration(hours: 0);
    final nyDate = DateComponents(DateTime.now().year, DateTime.now().month, DateTime.now().day);
    final nyParams = CalculationMethod.egyptian.getParameters();
    nyParams.madhab = Madhab.shafi;
    final nyPrayerTimes =
        PrayerTimes(egypt, nyDate, nyParams, utcOffset: nyUtcOffset);
    maghrib = await nyPrayerTimes.maghrib;
    return await nyPrayerTimes.maghrib;
  }

  Future<DateTime> getTodayIshaTime() async {
    final egypt = Coordinates(latitude, longitude);
    final nyUtcOffset = Duration(hours: 0);
    final nyDate = DateComponents(DateTime.now().year, DateTime.now().month, DateTime.now().day);
    final nyParams = CalculationMethod.egyptian.getParameters();
    nyParams.madhab = Madhab.shafi;
    final nyPrayerTimes =
        PrayerTimes(egypt, nyDate, nyParams, utcOffset: nyUtcOffset);
    isha = await nyPrayerTimes.isha;
    return await nyPrayerTimes.isha;
  }
}
