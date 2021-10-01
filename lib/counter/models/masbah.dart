class Count {

  int _id;
  int _counter;

  Count(this._counter);

  Count.withId(this._id, this._counter);

  int get counter => _counter;

  int get id => _id;

  set counter(int value) {
      _counter = value;
  }



  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    if (id != null) {
      map['id'] = _id;
    }
    map["counter"] = this._counter;
    return map;
  }

  Count.getMap(Map<String, dynamic> map){
    this._id = map["id"];
    this._counter = map["counter"];
  }
}