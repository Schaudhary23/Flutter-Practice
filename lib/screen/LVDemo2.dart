import 'package:flutter/material.dart';

class LVdemo extends StatelessWidget {
  final List<String> _courses = ['rgehht', 'sfggq', 'fsagrq', 'sfgw'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Android Courses')),
      body: ListView.separated(
          itemBuilder: ((context, index) {
            return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                    elevation: 10.0,
                    shadowColor: Colors.amberAccent,
                    child: ListTile(
                      title: Text(_courses[index]),
                    )));
          }),
          separatorBuilder: (context, index) => const Divider(
                color: Colors.amber,
              ),
          itemCount: itemCount),
    );
  }
}
