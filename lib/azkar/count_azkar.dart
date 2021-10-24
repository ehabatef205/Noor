import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:noor/colors.dart';

class countAzkar extends StatefulWidget {
  List<String> azkat;

  List<int> count;

  List<int> recount;

  String title;

  countAzkar(this.azkat, this.count, this.recount, this.title);

  @override
  _countAzkarState createState() =>
      _countAzkarState(this.azkat, this.count, this.recount, this.title);
}

class _countAzkarState extends State<countAzkar> {
  List<String> azkat;

  List<int> count;

  List<int> recount;

  String title;

  _countAzkarState(this.azkat, this.count, this.recount, this.title);

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
            title: Text(title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontFamily: "MO_Nawel",
                )),
          ),
          backgroundColor: backColor,
          body: Padding(
            padding: const EdgeInsets.all(10),
            child: ListView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                itemCount: azkat.length,
                itemBuilder: (context, index) {
                  return Column(children: <Widget>[
                    Text(
                      azkat[index],
                      style: TextStyle(fontSize: 20, color: Colors.white),
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.center,
                    ),
                    Container(
                        child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: RaisedButton(
                              color: Colors.teal,
                              textColor: Colors.white,
                              child: Padding(
                                padding: EdgeInsets.only(
                                    top: 20, bottom: 20),
                                child: Text(
                                  count[index].toString(),
                                  textScaleFactor: 2,
                                ),
                              ),
                              onPressed: () {
                                setState(() {
                                  if (count[index] > 0) count[index]--;
                                });
                              },
                            ),
                          ),
                          SizedBox(width: 20,),
                          Expanded(
                            child: RaisedButton(
                              color: Colors.teal,
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      top: 20, bottom: 20),
                                  child: Icon(
                                    Icons.refresh,
                                    size: 33,
                                    color: Colors.white,
                                  )),
                              onPressed: () {
                                setState(() {
                                  count[index] = recount[index];
                                });
                              },
                            ),
                          )
                        ],
                      ),
                    )),
                  ]);
                }),
          )),
    );
  }
}
