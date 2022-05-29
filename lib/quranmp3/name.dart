import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'quranmp3.dart';

class name extends StatefulWidget {
  @override
  _nameState createState() => _nameState();
}

class _nameState extends State<name> {
  var _name = [
    {
      "id": 1,
      "name": "خالد الجليل",
    },
    {
      "id": 2,
      "name": "عبد الباسط عبد الصمد",
    },
    {
      "id": 3,
      "name": "عبد الله كامل",
    },
    {
      "id": 4,
      "name": "فارس عباد",
    },
    {
      "id": 5,
      "name": "ماهر المعيقلي",
    },
    {
      "id": 6,
      "name": "محمد صديق المنشاوي",
    },
    {
      "id": 7,
      "name": "محمد محمود الطبلاوي",
    },
    {
      "id": 8,
      "name": "محمود خليل الحصري",
    },
    {
      "id": 9,
      "name": "مشاري العفاسي",
    },
    {
      "id": 10,
      "name": "ناصر القطامي",
    },
    {
      "id": 11,
      "name": "ياسر الدوسري",
    },
  ];

  List<String> photo = [
    "assets/images/name1.jpg",
    "assets/images/name2.jpg",
    "assets/images/name3.jpg",
    "assets/images/name4.jpg",
    "assets/images/name5.jpg",
    "assets/images/name6.jpg",
    "assets/images/name7.jpg",
    "assets/images/name8.jpg",
    "assets/images/name9.jpg",
    "assets/images/name11.jpg",
    "assets/images/name10.jpg",
  ];

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
                backgroundColor: Colors.transparent,
                centerTitle: true,
                elevation: 0,
                title: Text("اختر الشيخ"),
              ),
              backgroundColor: Colors.transparent,
              body: Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    itemCount: _name.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          ListTile(
                            title: Text(_name[index]["name"],
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18)),
                            leading: Container(
                              height: height * 0.08,
                              width: width * 0.14,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(photo[index]))),
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          quranmp3(index + 1)));
                            },
                          ),
                          index != _name.length - 1
                              ? Divider(
                                  color: Colors.grey,
                                  indent: 10,
                                  endIndent: 10,
                                  thickness: 1,
                                )
                              : Container(),
                        ],
                      );
                    }),
              )),
        ),
      ),
    );
  }
}
