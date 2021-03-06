import 'package:device_info/device_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:noor/quranwritten/builder/models/bookmarkedPage.dart';
import 'package:noor/quranwritten/builder/utilities/helper.dart';
import 'package:noor/quranwritten/pdf_view_native.dart';
import 'package:noor/quranwritten/library/Globals.dart' as globals;
import 'package:noor/quranwritten/quranwritten.dart';
import 'package:screen/screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';
import '../widget/Bookmark.dart';

class SurahViewBuilder extends StatefulWidget {
  SurahViewBuilder({Key key, @required this.pages}) : super(key: key);
  final int pages;

  @override
  _SurahViewBuilderState createState() => _SurahViewBuilderState();
}

class _SurahViewBuilderState extends State<SurahViewBuilder> {
  SQLHelper helper = new SQLHelper();
  List<BookmarkedPage> bookmarkedPagesList;
  int count = 0;

  BookmarkedPage _bookmarkedPage;

  /// My Document
  PdfDocument _document;

  /// On Double Tap Zoom Scale
  static const List<double> _doubleTapScales = <double>[1.0, 1.1];

  /// Current Page init (on page changed)
  int currentPage;

  /// Init Page Controller
  PageController pageController;

  bool isBookmarked = false;
  Widget _bookmarkWidget = Container();

  /// Used for Bottom Navigation
  int _selectedIndex = 0;

  /// Declare SharedPreferences
  SharedPreferences prefs;

  /// Load PDF Documents
  Future<PdfDocument> _getDocument() async {
    if (_document != null) {
      return _document;
    }

    /// Check Compatibility's [Android 5.0+]
    if (await hasSupport()) {
      _document = await PdfDocument.openAsset('assets/pdf/quran.pdf');
      return _document;
    } else {
      throw Exception(
        'المعذرة لا يمكن طباعة المحتوى'
        'يرجي التحقق من أن جهازك يدعم نظام أندرويد بنسخته 5 على الأقل',
      );
    }
  }

  /// Navigation event handler
  _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    /// Go to Bookmarked page
    if (index == 0) {
      setState(() {
        globals.bookmarkedPage = bookmarkedPagesList[0].bookmarkedPage;
      });
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
              builder: (context) =>
                  SurahViewBuilder(pages: globals.bookmarkedPage - 1)),
          (Route<dynamic> route) => false);

      //Bookmark this page
    } else if (index == 1) {
      setState(() {
        globals.bookmarkedPage = globals.currentPage;
        bookmarkedPagesList[0].bookmarkedPage = globals.currentPage;
        _save1();
        print("toSave: ${globals.bookmarkedPage}");
      });
      if (globals.bookmarkedPage != null) {
        setBookmark(globals.bookmarkedPage);
      }

      //got to index
    }
  }

  PageController _pageControllerBuilder() {
    return new PageController(
        initialPage: widget.pages, viewportFraction: 1.1, keepPage: true);
  }

  /// set bookmarkPage in sharedPreferences
  void setBookmark(int _page) async {
    prefs = await SharedPreferences.getInstance();
    if (_page != null && !_page.isNaN) {
      await prefs.setInt(globals.BOOKMARKED_PAGE, _page);
    }
  }

  /// set lastViewedPage in sharedPreferences
  void setLastViewedPage(int _currentPage) async {
    prefs = await SharedPreferences.getInstance();
    if (_currentPage != null && !_currentPage.isNaN) {
      prefs.setInt(globals.LAST_VIEWED_PAGE, _currentPage);
      globals.lastViewedPage = prefs.getInt(globals.LAST_VIEWED_PAGE);
    }
  }

  closePage(page) async {
    await page.close();
  }

  @override
  void initState() {
    /// Prevent screen from going into sleep mode:
    Screen.keepOn(true);
    setState(() {
      /// init current page
      globals.currentPage = widget.pages;
      pageController = _pageControllerBuilder();
    });

    if (bookmarkedPagesList == null) {
      bookmarkedPagesList = new List<BookmarkedPage>();
      updateListView();
    }

    Future.delayed(Duration(seconds: 1), () {
      if (bookmarkedPagesList.length == 0) {
        setState(() {
          _bookmarkedPage = BookmarkedPage(
              globals.DEFAULT_BOOKMARKED_PAGE, globals.DEFAULT_BOOKMARKED_PAGE);
          _save();
        });
        updateListView();
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    pageController = _pageControllerBuilder();
    return WillPopScope(
      // ignore: missing_return
      onWillPop: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => quranList()));
      },
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
              elevation: 0,
              leading: Container(),
              actions: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_forward))
              ],
            ),
            backgroundColor: Colors.transparent,
            body: FutureBuilder<PdfDocument>(
              future: _getDocument(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return SafeArea(
                    child: PDFView.builder(
                      scrollDirection: Axis.horizontal,
                      document: snapshot.data,
                      controller: pageController,
                      builder: (PdfPageImage pageImage, bool isCurrentIndex) {
                        currentPage = pageImage.pageNumber;
                        globals.currentPage = currentPage;
                        bookmarkedPagesList[0].continueReader = currentPage;
                        _save1();

                        /// Update lastViewedPage
                        setLastViewedPage(currentPage);

                        if (currentPage == globals.bookmarkedPage) {
                          isBookmarked = true;
                        } else {
                          isBookmarked = false;
                        }
                        print("$isBookmarked:$currentPage");

                        if (isBookmarked) {
                          _bookmarkWidget = Bookmark();
                        } else {
                          _bookmarkWidget = Container();
                        }

                        Widget image = Stack(
                          fit: StackFit.expand,
                          children: <Widget>[
                            Container(
                              child: ExtendedImage.memory(
                                pageImage.bytes,
                                // gesture not applied (minScale,maxScale,speed...)
                                mode: ExtendedImageMode.gesture,
                                scale: 1.5,
                                fit: BoxFit.fill,
                              ),
                            ),
                            isBookmarked == true
                                ? _bookmarkWidget
                                : Container(),
                          ],
                        );
                        if (isCurrentIndex) {
                          //currentPage=pageImage.pageNumber.round().toInt();
                          image = Hero(
                            tag: pageImage.pageNumber.toString(),
                            child: Container(child: image),
                            transitionOnUserGestures: true,
                          );
                        }
                        return image;
                      },
                      onPageChanged: (page) {},
                    ),
                  );
                } else if (snapshot.hasError) {
                  return Center(
                    child: Text(
                      'المعذرة لا يمكن طباعة المحتوى'
                      'يرجي التحقق من أن جهازك يدعم نظام أندرويد بنسخته 5 على الأقل',
                    ),
                  );
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              },
            ),
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Colors.black,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.book),
                  title: Text('الإنتقال إلى العلامة'),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.bookmark),
                  title: Text('حفظ العلامة'),
                ),
              ],
              currentIndex: _selectedIndex,
              selectedItemColor: Colors.teal,
              unselectedItemColor: Colors.teal,
              selectedFontSize: 12,
              onTap: (index) => _onItemTapped(index),
            ),
          ),
        ),
      ),
    );
  }

  Future<bool> hasSupport() async {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
    bool hasSupport = androidInfo.version.sdkInt >= 21;
    return hasSupport;
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
