import 'package:flutter/material.dart';

void main () {
  runApp(MaterialApp(
    home: Scaffold(
    appBar: AppBar(title: Text('Ecran de base')),
    body: Center(
      child: Column(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 200,
              height: 150,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 193, 250, 196),
                border: Border.all(
                  color: Colors.black,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(10.0), // Uniform radius
              ),
              child: Center(
                child: Text('Premier'),
              ),
              ),
            Container(
               width: 300,
              height: 150,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 248, 250, 138),
                border: Border.all(
                  color: Colors.black,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(10.0), // Uniform radius
              ),
              child: Center(
                child: Text('Deuxième'),
              ),
            ),
            Container(
               width: 400,
              height: 150,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 165, 231, 243),
                border: Border.all(
                  color: Colors.black,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(10.0), // Uniform radius
              ),
              child: Center(
                child: Text('Troisème'),
              ),
            ),
        ]   
    )
    )
    
    )
    ));
}