import 'package:flutter/material.dart';
import 'package:sqflite_test01/controller/datacontroller.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final datacontroller = DataController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              children: [
                RaisedButton(
                    onPressed: datacontroller.insertdata,
                    color: Colors.amberAccent,
                    child: Text("INSERT")),
                RaisedButton(
                    onPressed: datacontroller.queryall,
                    color: Colors.pink,
                    child: Text("QUERY")),
                RaisedButton(
                    onPressed: datacontroller.queryspecific,
                    color: Colors.green,
                    child: Text("QUERY SPACIFIC")),
                RaisedButton(
                    onPressed: datacontroller.update,
                    color: Colors.indigo,
                    child: Text("UPDATE")),
                RaisedButton(
                    onPressed: datacontroller.delete,
                    color: Colors.redAccent,
                    child: Text("DELETE")),
              ],
            ),
          )
        ],
      ),
    );
  }
}
