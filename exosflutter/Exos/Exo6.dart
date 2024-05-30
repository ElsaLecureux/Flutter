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
              Center(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal:10.0, vertical:10.0),
                  decoration: BoxDecoration( 
                    color: Colors.orange,
                    border: Border.all(
                    color: Colors.black,
                    width: 1.0,
                    ),
                  borderRadius: BorderRadius.circular(10.0),
                  ), 
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        border: Border.all(
                          color: Colors.black,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                      ), 
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                               decoration: BoxDecoration(
                                  color: Colors.yellow,
                                  border: Border.all(
                                    color: Colors.black,
                                  width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ), 
                              child: Column(
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      border: Border.all(
                                        color: Colors.black,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                    ), 
                                  ),
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      border: Border.all(
                                        color: Colors.black,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                    ), 
                                  ),
                                ],
                            ),
                            ),
                            Container(
                              padding: EdgeInsets.all(10),
                               decoration: BoxDecoration(
                                  color: Colors.yellow,
                                  border: Border.all(
                                    color: Colors.black,
                                  width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ), 
                              child: Column(
                                children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      border: Border.all(
                                        color: Colors.black,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                    ), 
                                  ),
                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      border: Border.all(
                                        color: Colors.black,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                    ), 
                                  ),
                                ],
                            ),
                            ),
                            
                          ],
                        )
                      ),
                  ),
                ),
              ),
             ]
          ),
        ),
      ))));
}