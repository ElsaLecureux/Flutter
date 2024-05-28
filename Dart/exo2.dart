import 'dart:io';

void main () {
    print("Enter a number:");
    try {
        var number = int.parse(stdin.readLineSync()!);
        print( number.floor().isEven ? "Your number is even" : "Your number is odd");
    } on Exception catch (e) {
        print("this is not a number!");
    } 
}