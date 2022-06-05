import 'package:flutter/material.dart';

class LVDemo1 extends StatelessWidget {
  const LVDemo1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Authored Courses'),
        ),
        body: ListView(children: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Card(
              elevation: 10.0,
              child: ListTile(
                title: Text('ADD.NET By Example'),
                trailing: Icon(Icons.forward),
              ),
            ),
          ),
          Card(
              elevation: 10.0,
              child: ListTile(
                title: Text('Working With Databases Using JDBC'),
              ))
        ]));
  }
}
