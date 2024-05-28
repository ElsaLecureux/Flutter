import 'dart:io';

void main () {
    print("Enter your name");
    var name  = stdin.readLineSync();
    print("Enter your age:");
    try {
        var age = int.parse(stdin.readLineSync()!);
        var number = 100 - age;
        print(" ${name}, you will be 100 in ${number} years.");
    } on Exception catch (e) {
        print("this is not a number!");
    } 
}