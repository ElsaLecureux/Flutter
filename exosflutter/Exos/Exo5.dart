import 'package:flutter/material.dart';

void main () {
  runApp( MaterialApp(
    home:Scaffold(
      body:Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal:150.0, vertical:50.0),
          decoration: BoxDecoration(
            border: Border.all(
                color: Colors.black,
                width: 1.0,
            ),
          borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            children: [
              Flexible(
                flex: 1,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal:50.0, vertical:20.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                    color: Colors.black,
                    width: 1.0,
                    ),
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10.0),
                  ),
                  //child: const Text('Container 1'),
                ),
              ),
              Flexible(
                flex: 3,
                child: Container(
                  margin: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                    color: Colors.black,
                    width: 1.0,
                    ),
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(10.0),
                  ),
                  //child: const Text('Container 2'),
                ),
              ),
              Flexible(
                flex: 2,
                child: Container(
                 margin: const EdgeInsets.symmetric(horizontal:30.0, vertical:20.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                    color: Colors.black,
                    width: 1.0,
                    ),
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10.0),
                  ),
                  //child: const Text('Container 3'),
                ),
              ),
            ]
          ),
        ),
      ))));
}