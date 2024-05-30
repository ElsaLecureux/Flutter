import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//       home: Scaffold(
//     appBar: AppBar(
//       title: Text('Rows and Columns'),
//     ),//AppBar
//     body: MyWidget(),
//   )));//Scaffold // MaterialApp
// }

// class MyWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child:
//           Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
//         Container(width: 100, height: 100, color: Colors.red),
//         Container(width: 100, height: 100, color: Colors.orange),
//         Container(width: 100, height: 100, color: Colors.pink),
//       ]), //Column
//     ); //Center
//   }
// }

// void main () {
//   runApp(MaterialApp(home: myHomePage()));
// }

// class myHomePage extends StatefulWidget {
//  @override
//     State<myHomePage> createState() => _MyHomePageState();
//   }

// class _MyHomePageState extends State<myHomePage> {
//   bool isButtonPressed = false;

// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     body: GestureDetector(
//       onTap: () {
//         if(isButtonPressed)  {
//         setState(() {
//            isButtonPressed= false;
//         }); 
//         } else {
//           setState(() {
//             isButtonPressed = true;
//         });
//       }},
//       child: Container(color: getColor())
//     ),
//   );
// }

//   Color getColor() {
//     if(isButtonPressed) {
//       return Colors.red;
//     } else {
//       return Colors.blue;
//     }
//   }
// }


// void main () {
//  runApp(MaterialApp(home: Scaffold(body: Center(child: Counter()))));
// }

// class Counter extends StatefulWidget {
//   @override
//     State<Counter> createState() => _CounterState();
// }

// class _CounterState extends State<Counter> {
//   // Butter Counter: X
//   // initial value_counter var = 0
//   int _counter = 0;
//   // increment function _counter+++ setState()
//   void _increment() {
//     setState(() {
//     _counter++;
//     });
//   }
  
//   // Widget build() Button on Pressed : _increment
//   @override
//     Widget build(BuildContext context) {
//       return Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           TextButton(onPressed: _increment, child: Text('Press me!')),
//           Text('You pressed $_counter times')
//       ]);
//     }
// }


void main () {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _inputText = '';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("App Bar at Top"),
      ),
      body: Center(
        child: TextField(
          decoration: InputDecoration(hintText: "Enter some text here!"),
          onChanged: (value) {
            setState(() {
              _inputText = value;
            });
          },
        )
      ),
      bottomSheet: Container(
        alignment: Alignment.center,
        height: 50,
        child: Text('you typed: $_inputText')
      ),
    );
  }
}
