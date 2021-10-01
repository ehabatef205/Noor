import 'package:flutter/material.dart';
import 'package:noor/counter/models/masbah.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'dart:io';
import 'package:path_provider/path_provider.dart';


class SQL_Helper {

  static SQL_Helper dbHelper;
  static Database _database;

  SQL_Helper._createInstance();

  factory SQL_Helper() {
    if (dbHelper == null) {
      dbHelper = SQL_Helper._createInstance();
    }
    return dbHelper;
  }

  String tableCount = "counts_table";
  String _id = "id";
  String _counter = "counter";

  Future<Database> get database async {
    if (_database == null){
      _database = await initializedDatabase();
    }
    return _database;
  }


  Future<Database> initializedDatabase() async {

    Directory directory = await getApplicationDocumentsDirectory();
    String path = directory.path + "counts.db";

    var countDB = await openDatabase(path, version: 1, onCreate: createDatabase);
    return countDB;
  }


  void createDatabase(Database db, int version) async {
    await db.execute(
        "CREATE TABLE $tableCount($_id INTEGER PRIMARY KEY AUTOINCREMENT, $_counter INTEGER)");
  }

  Future<List<Map<String, dynamic>>> getCountMapList() async {
    Database db = await this.database;

    //var result1 =  await db.rawQuery("SELECT * FROM $tableCount ORDER BY $_id ASC");
    var result = await db.query(tableCount, orderBy: "$_id ASC");
    return result;
  }

  Future<int> insertCount(Count count) async {
    Database db = await this.database;
    var result = await db.insert(tableCount, count.toMap());
    return result;
  }

  Future<int> updateCount(Count count) async{
    Database db = await this.database;
    var result = await db.update(tableCount, count.toMap(), where: "$_id = ?", whereArgs: [count.id]);
    return result;
  }


  Future<int> deleteCount(int id) async {
    var db = await this.database;
    int result = await db.rawDelete("DELETE FROM $tableCount WHERE $_id = $id");
    return result;
  }


  Future<int> getCount() async {
    Database db = await this.database;
    List<Map<String, dynamic>> all = await db.rawQuery("SELECT COUNT (*) FROM $tableCount");
    int result = Sqflite.firstIntValue(all);
    return result;
  }

  Future<List<Count>> getCountList() async{

    var countMapList = await getCountMapList();
    int count = countMapList.length;

    List<Count> counts = new List<Count>();

    for (int i = 0; i <= count -1; i++){
      counts.add(Count.getMap(countMapList[i]));
    }

    return counts;
  }
}