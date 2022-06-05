import 'package:flutter/material.dart';

class Flightwidget extends StatelessWidget {
  const Flightwidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.redAccent[100],
          child: const Center(
            child: Text('Flight Page',
                style: TextStyle(fontSize: 30.0, color: Colors.white)),
          ),
        ),
      ],
    );
  }
}
