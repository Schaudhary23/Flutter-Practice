import 'package:flutter/material.dart';

class Hotelwidget extends StatelessWidget {
  const Hotelwidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.purple,
          child: const Center(
            child: Text('Hotel Page',
                style: TextStyle(fontSize: 30.0, color: Colors.white)),
          ),
        ),
      ],
    );
  }
}
