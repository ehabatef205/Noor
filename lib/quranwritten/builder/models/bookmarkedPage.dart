class BookmarkedPage {

  int _id;
  int _bookmarkedPage;
  int _continueReader;

  BookmarkedPage(this._bookmarkedPage, this._continueReader);

  BookmarkedPage.withId(this._id, this._bookmarkedPage, this._continueReader);

  int get bookmarkedPage => _bookmarkedPage;

  int get continueReader => _continueReader;

  int get id => _id;

  set bookmarkedPage(int value) {
      _bookmarkedPage = value;
  }

  set continueReader(int value) {
    _continueReader = value;
  }



  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    if (id != null) {
      map['id'] = _id;
    }
    map["bookmarkedPage"] = this._bookmarkedPage;
    map["continueReader"] = this._continueReader;
    return map;
  }

  BookmarkedPage.getMap(Map<String, dynamic> map){
    this._id = map["id"];
    this._bookmarkedPage = map["bookmarkedPage"];
    this._continueReader = map["continueReader"];
  }
}