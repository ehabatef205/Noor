import 'package:flutter/material.dart';
import 'package:noor/movePages.dart';

class splashScreen extends StatefulWidget {
  _splashScreenState createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 7), (){
      Navigator.push(context, MaterialPageRoute(builder: (context) => movePages()));
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/start.gif"), fit: BoxFit.fill)),
        ));
  }
}
