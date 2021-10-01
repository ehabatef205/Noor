import 'package:flutter/material.dart';
import 'package:noor/quranwritten/builder/models/bookmarkedPage.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'dart:io';
import 'package:path_provider/path_provider.dart';


class SQLHelper {

  static SQLHelper dbHelper;
  static Database _database;

  SQLHelper._createInstance();

  factory SQLHelper() {
    if (dbHelper == null) {
      dbHelper = SQLHelper._createInstance();
    }
    return dbHelper;
  }

  String tableBookmarkedPage = "bookmarkedPage_table";
  String _id = "id";
  String _bookmarkedPage = "bookmarkedPage";
  String _continueReader = "continueReader";

  Future<Database> get database async {
    if (_database == null){
      _database = await initializedDatabase();
    }
    return _database;
  }


  Future<Database> initializedDatabase() async {

    Directory directory = await getApplicationDocumentsDirectory();
    String path = directory.path + "bookmarkedPages.db";

    var bookmarkedPageDB = await openDatabase(path, version: 1, onCreate: createDatabase);
    return bookmarkedPageDB;
  }


  void createDatabase(Database db, int version) async {
    await db.execute(
        "CREATE TABLE $tableBookmarkedPage($_id INTEGER PRIMARY KEY AUTOINCREMENT, $_bookmarkedPage INTEGER, $_continueReader INTEGER)");
  }

  Future<List<Map<String, dynamic>>> getBookmarkedPageMapList() async {
    Database db = await this.database;

    //var result1 =  await db.rawQuery("SELECT * FROM $tableBookmarkedPage ORDER BY $_id ASC");
    var result = await db.query(tableBookmarkedPage, orderBy: "$_id ASC");
    return result;
  }

  Future<int> insertBookmarkedPage(BookmarkedPage bookmarkedPage) async {
    Database db = await this.database;
    var result = await db.insert(tableBookmarkedPage, bookmarkedPage.toMap());
    return result;
  }

  Future<int> updateBookmarkedPage(BookmarkedPage bookmarkedPage) async{
    Database db = await this.database;
    var result = await db.update(tableBookmarkedPage, bookmarkedPage.toMap(), where: "$_id = ?", whereArgs: [bookmarkedPage.id]);
    return result;
  }


  Future<int> deleteBookmarkedPage(int id) async {
    var db = await this.database;
    int result = await db.rawDelete("DELETE FROM $tableBookmarkedPage WHERE $_id = $id");
    return result;
  }


  Future<int> getBookmarkedPage() async {
    Database db = await this.database;
    List<Map<String, dynamic>> all = await db.rawQuery("SELECT BookmarkedPage (*) FROM $tableBookmarkedPage");
    int result = Sqflite.firstIntValue(all);
    return result;
  }

  Future<List<BookmarkedPage>> getBookmarkedPageList() async{

    var bookmarkedPageMapList = await getBookmarkedPageMapList();
    int bookmarkedPage = bookmarkedPageMapList.length;

    List<BookmarkedPage> bookmarkedPages = new List<BookmarkedPage>();

    for (int i = 0; i <= bookmarkedPage -1; i++){
      bookmarkedPages.add(BookmarkedPage.getMap(bookmarkedPageMapList[i]));
    }

    return bookmarkedPages;
  }
}