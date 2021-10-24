import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:noor/colors.dart';
import '../entity/Surah.dart';
import '../quranwritten.dart';
import 'surah_view_builder.dart';

class SurahListBuilder extends StatefulWidget {
  final List<Surah> surah;

  SurahListBuilder({Key key, this.surah}) : super(key: key);

  @override
  _SurahListBuilderState createState() => _SurahListBuilderState();
}

class _SurahListBuilderState extends State<SurahListBuilder> {
  TextEditingController editingController = TextEditingController();

  List<Surah> surah = List<Surah>();

  void initSurahListView() {
    if (surah.isNotEmpty) {
      surah.clear();
    }
    surah.addAll(widget.surah);
  }

  void filterSearchResults(String query) {
    /// Fill surah list if empty
    initSurahListView();

    /// SearchList contains every surah
    List<Surah> searchList = List<Surah>();
    searchList.addAll(surah);

    /// Contains matching surah(s)
    List<Surah> listData = List<Surah>();
    if (query.isNotEmpty) {
      /// Loop all surah(s)
      searchList.forEach((item) {
        /// Filter by (titleAr:exact,title:partial,pageIndex)
        if (item.titleAr.contains(query) ||
            item.title.toLowerCase().contains(query.toLowerCase()) ||
            item.pageIndex.toString().contains(query)) {
          listData.add(item);
        }
      });

      /// Fill surah List with searched surah(s)
      setState(() {
        surah.clear();
        surah.addAll(listData);
      });
      return;

      /// Show all surah list
    } else {
      setState(() {
        surah.clear();
        surah.addAll(widget.surah);
      });
    }
  }

  @override
  void initState() {
    /// Init listView with all surah(s)
    initSurahListView();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      // ignore: missing_return
      onWillPop: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => quranList()));
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "اختر السورة",
            style: TextStyle(
              fontFamily: "MO_Nawel",
              fontSize: 30,
            ),
          ),
          backgroundColor: backColor,
        ),
        backgroundColor: backColor,
        body: Column(
          children: <Widget>[
            /// Search field
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                style: TextStyle(
                  color: Colors.white,
                ),
                cursorColor: Colors.white,
                onChanged: (value) {
                  filterSearchResults(value);
                  print(value);
                },
                controller: editingController,
                decoration: InputDecoration(
                  labelText: "البحث عن سورة",
                  labelStyle: TextStyle(color: Colors.white),
                  // hintText: "البحث",
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                    borderSide: BorderSide(
                      color: Colors.grey,
                      style: BorderStyle.solid,
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                    borderSide: BorderSide(
                      color: Colors.grey,
                      style: BorderStyle.solid,
                      width: 1,
                    ),
                  ),
                ),
              ),
            ),

            /// ListView represent all/searched surah(s)
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: surah.length,
                itemExtent: 90,
                itemBuilder: (BuildContext context, int index) => Column(
                  children: [
                    ListTile(
                        title: Text(
                          surah[index].titleAr,
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        subtitle: Text(
                          "عدد الأيات: ${surah[index].count}",
                          style: TextStyle(color: Colors.grey),
                        ),
                        leading: Image(
                            image: AssetImage(
                                "assets/images/${surah[index].place}.png"),
                            width: 30,
                            height: 30),
                        onTap: () {
                          /// Push to Quran view ([int pages] represent surah page(reversed index))
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SurahViewBuilder(
                                      pages: surah[index].pages)));
                        }),
                    index != surah.length - 1
                        ? Divider(
                            color: Colors.white.withOpacity(0.1),
                          )
                        : Container(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
