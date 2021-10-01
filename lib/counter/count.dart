import 'package:flutter/material.dart';
import 'package:arabic_numbers/arabic_numbers.dart';
import 'package:noor/counter/utilities/database_helper.dart';
import 'package:sqflite/sqflite.dart';

import 'models/masbah.dart';

class Counter extends StatefulWidget {

  @override
  _CounterState createState() => _CounterState();
}

ArabicNumbers arabicNumber = ArabicNumbers();

class _CounterState extends State<Counter> {
  int counter = 0;
  bool language = true;
  bool numbersStatus = true;

  SQL_Helper helper = new SQL_Helper();
  List<Count> countsList;
  int count = 0;

  Count _count;

  @override
  void initState() {
    super.initState();
    if (countsList == null) {
      countsList = new List<Count>();
      updateListView();
    }



    Future.delayed(Duration(seconds: 1), (){
      if(countsList.length == 0){
        setState(() {
          _count = Count(0);
          _save();
        });
        updateListView();
      }
      try{
        setState(() {
          counter = countsList[0].counter;
        });
      }catch (Ex){

      }
    });
  }

  @override
  Widget build(BuildContext context) {




    double height = MediaQuery.of(context).size.height;

    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: whiteColor,
      endDrawer: Drawer(),
      body: Container(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/a.jpg"), fit: BoxFit.fill)),
            ),
            Column(
              children: [
                SizedBox(
                  height: height * .17,
                ),
//(1)upper container
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: height * .09,
                      width: width * .5,
                      decoration: BoxDecoration(
                        border: Border.all(color:Colors.blue.withOpacity(.5)),
                        borderRadius: BorderRadius.circular(10),
                        color:Colors.blue.withOpacity(.2),
                      ),
                      child: Center(
                        child: Text(
                          counter.toString(),
                          style: TextStyle(
                              fontFamily: "digital-7",
                              fontSize: 30,
                              color: whiteColor),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: height * .04,
                ),
// (2) reset button
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      child: SizedBox(
                        width: width * .1,
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        customBorder: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Container(
                          height: height * .08,
                          width: height * .08,
                          decoration: BoxDecoration(
                              color: Colors.blue.withOpacity(.5), shape: BoxShape.circle),
                          child: Center(child: Text("إعادة", style: TextStyle(color: Colors.white, fontSize: 20, fontFamily: "MO_Nawel",))),
                        ),
                        onTap: () {
                          setState(() {
                            counter = 0;
                            countsList[0].counter = 0;
                            _save1();
                          });
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * .01,
                ),
//  (3) main button
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: InkWell(
                        customBorder: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(120),
                        ),
                        onTap: () {
                          setState(() {
                            counter++;
                            countsList[0].counter = countsList[0].counter + 1;
                            _save1();
                          });
                        },
                        child: Container(
                          height: height * .4,
                          width: width * .8,
                          decoration: BoxDecoration(
                              color: Colors.blue.withOpacity(.5), shape: BoxShape.circle),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * .04,
                ),
//(4) language and total row
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.center,
                        child: Text.rich(TextSpan(children: [
                          TextSpan(
                            text: "مجموع التسبيحات: ",
                            style: TextStyle(
                                fontFamily: "MO_Nawel",
                                fontSize: height * .03,
                                color: whiteColor),
                          ),
                          TextSpan(
                            text: "${counter.toString()}",
                            style: TextStyle(
                                fontFamily: "digital-7",
                                fontSize: height * .03,
                                color: whiteColor),
                          ),
                        ])),
                      )
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  void _save() async {

    int result;
    if (_count.id == null) {
      result = await helper.insertCount(_count);
    } else {
      result = await helper.updateCount(_count);
    }
  }

  void _save1() async {

    int result;
    if (countsList[0].id == null) {
      result = await helper.insertCount(countsList[0]);
    } else {
      result = await helper.updateCount(countsList[0]);
    }
  }

  void updateListView() {
    final Future<Database> db = helper.initializedDatabase();
    db.then((database) {
      Future<List<Count>> names = helper.getCountList();
      names.then((theList) {
        setState(() {
          this.countsList = theList;
          this.count = theList.length;
        });
      });
    });
  }
}

const whiteColor = Color(0xFFEEEEEE);
const offWhiteColor = Color(0xFFFBFAFE);
const purpleColor = Color(0xFF6A55A6);
const grayColor = Color(0xFFB7B6B9);