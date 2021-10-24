import 'package:flutter/material.dart';
import 'package:noor/colors.dart';
import 'package:noor/move_pages.dart';
import 'package:noor/quranwritten/builder/models/bookmarkedPage.dart';
import 'package:noor/quranwritten/builder/utilities/helper.dart';
import 'dart:convert';
import 'package:noor/quranwritten/library/Globals.dart' as globals;
import 'package:screen/screen.dart';
import 'package:sqflite/sqflite.dart';

import 'entity/Surah.dart';
import 'builder/surah_list_builder.dart';
import 'builder/surah_view_builder.dart';

class quranList extends StatefulWidget {
  @override
  _quranListState createState() => _quranListState();
}

class _quranListState extends State<quranList> {

  SQLHelper helper = SQLHelper();
  List<BookmarkedPage> bookmarkedPagesList;
  int count = 0;

  BookmarkedPage _bookmarkedPage;

  /// Used for Bottom Navigation
  int _selectedIndex = 0;

  /// Get Screen Brightness
  void getScreenBrightness() async {
    globals.brightnessLevel = await Screen.brightness;
  }

  /// Navigation event handler
  _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    /// Go to Bookmarked page
    if (index == 0) {
      setState(() {
        /// in case Bookmarked page is null (Bookmarked page initialized in splash screen)
        if (globals.bookmarkedPage == null) {
          globals.bookmarkedPage = bookmarkedPagesList[0].bookmarkedPage;
        }
      });
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
              builder: (context) =>
                  SurahViewBuilder(pages: globals.bookmarkedPage - 1)),
          (Route<dynamic> route) => false);

      /// Continue reading
    } else if (index == 1) {
      globals.lastViewedPage = bookmarkedPagesList[0].continueReader;
      if (globals.lastViewedPage != null) {
        /// Push to Quran view ([int pages] represent surah page(reversed index))
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    SurahViewBuilder(pages: globals.lastViewedPage - 1)));
      }

      /// Customize Screen Brightness
    }
  }

  void redirectToLastVisitedSurahView() {
    print("redirectTo:${globals.lastViewedPage}");
    if (globals.lastViewedPage != null) {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
              builder: (context) =>
                  SurahViewBuilder(pages: globals.lastViewedPage)),
          (Route<dynamic> route) => false);
    }
  }

  @override
  void initState() {
    /// set saved Brightness level
    Screen.keepOn(true);

    if (bookmarkedPagesList == null) {
      bookmarkedPagesList = List<BookmarkedPage>();
      updateListView();
    }

    Future.delayed(Duration(seconds: 1), (){
      if(bookmarkedPagesList.length == 0){
        setState(() {
          _bookmarkedPage = BookmarkedPage(globals.DEFAULT_BOOKMARKED_PAGE, globals.DEFAULT_BOOKMARKED_PAGE);
          _save();
        });
        updateListView();
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      // ignore: missing_return
      onWillPop: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => movePages()));
      },
      child: Scaffold(
          body: Container(
            child: Directionality(
              textDirection: TextDirection.rtl,

              /// Use future builder and DefaultAssetBundle to load the local JSON file
              child: FutureBuilder(
                  future: DefaultAssetBundle.of(context)
                      .loadString('assets/json/surah.json'),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      List<Surah> surahList = parseJson(snapshot.data.toString());
                      return surahList.isNotEmpty
                          ? SurahListBuilder(surah: surahList)
                          : Center(child: CircularProgressIndicator());
                    } else {
                      return Center(child: CircularProgressIndicator());
                    }
                  }),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: backColor,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.book),
                title: Text('الإنتقال إلى العلامة'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.chrome_reader_mode),
                title: Text('مواصلة القراءة'),
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.teal,
            unselectedItemColor: Colors.teal,
            selectedFontSize: 12,
            onTap: (index) => _onItemTapped(index),
          ),
        ),
    );
  }

  List<Surah> parseJson(String response) {
    if (response == null) {
      return [];
    }
    final parsed =
        json.decode(response.toString()).cast<Map<String, dynamic>>();
    return parsed.map<Surah>((json) => Surah.fromJson(json)).toList();
  }

  void _save() async {
    int result;
    if (_bookmarkedPage.id == null) {
      result = await helper.insertBookmarkedPage(_bookmarkedPage);
    } else {
      result = await helper.updateBookmarkedPage(_bookmarkedPage);
    }
  }

  void _save1() async {
    int result;
    if (bookmarkedPagesList[0].id == null) {
      result = await helper.insertBookmarkedPage(bookmarkedPagesList[0]);
    } else {
      result = await helper.updateBookmarkedPage(bookmarkedPagesList[0]);
    }
  }

  void updateListView() {
    final Future<Database> db = helper.initializedDatabase();
    db.then((database) {
      Future<List<BookmarkedPage>> names = helper.getBookmarkedPageList();
      names.then((theList) {
        setState(() {
          this.bookmarkedPagesList = theList;
          this.count = theList.length;
        });
      });
    });
  }
}
