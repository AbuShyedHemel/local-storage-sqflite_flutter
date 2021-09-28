import 'package:sqflite_test01/model/databasehelper.dart';

class DataController {
  final dbhelper = DatabaseHelper.instance;

  void insertdata() async {
    Map<String, dynamic> row = {
      DatabaseHelper.columnName: "Hemel",
      DatabaseHelper.columnage: 21
    };
    final id = await dbhelper.insert(row);
    print(id);
  }

  void queryall() async {
    var allrows = await dbhelper.querall();
    allrows.forEach((row) {
      print(row);
    });
  }

  void queryspecific() async {
    var allrows = await dbhelper.querySpacific(18);
    print(allrows);
  }

  void delete() async {
    var id = await dbhelper.deletedata(1);
    print(id);
  }
  void update() async {
    var id = await dbhelper.updatedata(2);
    print(id);
  }
}
