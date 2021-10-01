import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class countAzkar extends StatefulWidget {

  List<String> azkat;

  List<int> count;

  List<int> recount;

  String title;

  countAzkar(this.azkat, this.count, this.recount, this.title);

  @override
  _countAzkarState createState() => _countAzkarState(this.azkat, this.count, this.recount, this.title);
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
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/a.jpg"), fit: BoxFit.fill)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
        Container(
          height: height * 0.2,
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Text(title, style: TextStyle(color: Colors.white, fontSize: 18)),
            )),
        Expanded(
          child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(40), topLeft: Radius.circular(40)),
                ),
                padding: EdgeInsets.only(top: 15),
                child: ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    itemCount: azkat.length,
                    itemBuilder: (context, index) {
                      return Column(children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(right: 10, left: 10),
                            child: Text(
                              azkat[index],
                              style: TextStyle(fontSize: 20),
                              textDirection: TextDirection.rtl,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        Container(
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 20),
                                      child: RaisedButton(
                                        color: Colors.lightBlueAccent,
                                        textColor: Colors.black38,
                                        child: Padding(
                                          padding: EdgeInsets.only(top: 20, bottom: 20),
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
                                  ),
                                  Container(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.only(right: 20),
                                      child: RaisedButton(
                                        color: Colors.lightBlueAccent,
                                        child: Padding(
                                            padding: EdgeInsets.only(top: 20, bottom: 20),
                                            child: Icon(
                                              Icons.refresh,
                                              size: 33,
                                              color: Colors.black38,
                                            )),
                                        onPressed: () {
                                          setState(() {
                                            count[index] = recount[index];
                                          });
                                        },
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )),
                      ]);
                    }),
              ),
        )
      ]),
    ));
  }
}
