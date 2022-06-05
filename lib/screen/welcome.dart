import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            leading: const Icon(Icons.web),
            title: const Text('My First Flutter App'),
          ),
          body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.greenAccent,
                Colors.lightBlueAccent,
              ]),
            ),
            child: const Center(
              child: Text(
                'Welcome to My First Flutter App',
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
          )),
    ),
  );
}
