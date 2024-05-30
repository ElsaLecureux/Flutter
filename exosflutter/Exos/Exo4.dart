import 'package:flutter/material.dart';

void main () {
  runApp(MaterialApp(
    home: Scaffold(
    appBar: AppBar(title: Text('App')),
    body: Center(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 100, vertical: 50),
        decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(10.0), // Uniform radius
        ),
        child: Center(
          child: Container(
            padding: EdgeInsets.all(16.0),
             decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(10.0), // Uniform radius
        ),
            child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        Center(
        child: Container(
          padding: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            border: Border.all(
                    color: Colors.black,
                    width: 1.0,
            ),
          borderRadius: BorderRadius.circular(10.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 200,
                height: 100,
                decoration: BoxDecoration(
                  color:  Color.fromARGB(255, 193, 250, 196),
                  border: Border.all(
                    color: Colors.black,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(10.0), // Uniform radius
                ),
                child: Center(
                  child: Text('1:1'),
                ),
                ),
              Container(
                  width: 200,
                height: 100,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 193, 250, 196),
                  border: Border.all(
                    color: Colors.red,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(10.0), // Uniform radius
                ),
                child: Center(
                  child: Text('1:2'),
                ),
              ),
              Container(
                  width: 200,
                height: 100,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 193, 250, 196),
                  border: Border.all(
                    color: Colors.blue,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(10.0), // Uniform radius
                ),
                child: Center(
                  child: Text('1:3'),
                ),
              ),
          ] 
        ),
        )), 
        Center(
        child: Container(
          padding: EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            border: Border.all(
                    color: Colors.black,
                    width: 1.0,
            ),
          borderRadius: BorderRadius.circular(10.0),
          ),
          child: 
        Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 150,
            height: 100,
            decoration: BoxDecoration(
              color:  Color.fromARGB(255, 165, 231, 243),
              border: Border.all(
                color: Colors.red,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(10.0), // Uniform radius
            ),
            child: Center(
              child: Text('2:1'),
            ),
            ),
          Container(
              width: 150,
            height: 100,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 165, 231, 243),
              border: Border.all(
                color: Colors.green,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(10.0), // Uniform radius
            ),
            child: Center(
              child: Text('2:2'),
            ),
          ),
          Container(
              width: 150,
            height: 100,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 165, 231, 243),
              border: Border.all(
                color: Colors.orange,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(10.0), // Uniform radius
            ),
            child: Center(
              child: Text('2:3'),
            ),
          ),
      ] 
        ),
      ))]  
      ),    
        ),)
        
      ),
      
    )
    )
    )
    );
}