import 'package:flutter/material.dart';

class RowAppDemo extends StatelessWidget {
  const RowAppDemo({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row Widget Demo'),
      ),
      body: Container(
        height: 400,
        color: Colors.yellow,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 100,
              color: Color.fromARGB(255, 104, 209, 160),
              child: const Center(
                child: Text(
                  'Red',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.green,
              child: const Center(
                  child: Text(
                'Green',
                style: TextStyle(color: Colors.white),
              )),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.blue,
              child: const Center(
                  child: Text(
                'Blue',
                style: TextStyle(color: Colors.white),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
