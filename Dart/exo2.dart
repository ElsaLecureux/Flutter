import 'dart:io';

void main () {
     print("Enter a number:");
    var number = int.parse(stdin.readLineSync()!);
    print( number.floor().isEven ? "Your number is even" : "Your number is odd");
}