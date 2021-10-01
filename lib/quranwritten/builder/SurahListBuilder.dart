import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../entity/Surah.dart';
import '../quranwritten.dart';
import 'SurahViewBuilder.dart';

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
      onWillPop: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => quranList()));
      },
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/a.jpg"), fit: BoxFit.fill)),
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 35, bottom: 35, right: 15, left: 15),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(5)),
              child: Column(
                children: <Widget>[
                  /// Search field
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      cursorColor: Colors.green,
                      onChanged: (value) {
                        filterSearchResults(value);
                        print(value);
                      },
                      controller: editingController,
                      decoration: InputDecoration(
                          labelText: "البحث عن سورة",
                          labelStyle: TextStyle(color: Colors.white),
                          // hintText: "البحث",
                          prefixIcon: Icon(Icons.search, color: Colors.white,),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(10.0)))),
                    ),
                  ),

                  /// ListView represent all/searched surah(s)
                  Expanded(
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      itemCount: surah.length,
                      itemExtent: 80,
                      itemBuilder: (BuildContext context, int index) => ListTile(
                          title: Text(surah[index].titleAr, style: TextStyle(color: Colors.white, fontSize: 18),),
                          subtitle: Text("عدد الأيات: ${surah[index].count}", style: TextStyle(color: Colors.grey),),
                          leading: Image(
                              image:
                                  AssetImage("assets/images/${surah[index].place}.png"),
                              width: 30,
                              height: 30),
                          onTap: () {
                            /// Push to Quran view ([int pages] represent surah page(reversed index))
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        SurahViewBuilder(pages: surah[index].pages)));
                          }),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
