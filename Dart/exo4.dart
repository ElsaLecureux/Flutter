import 'dart:io';

void main() {
      print("Enter a number:");
    try {
        var number = int.parse(stdin.readLineSync()!);
        List<int> list = [];
        for (var i = 1; i < number; i++) {
            if ( number% i == 0) {
                list.add(i);
            }
        }
        print("Here are all the dividers of ${number} : ${list}");
    } on Exception catch (e) {
        print(e);
        print("this is not a number!");
    } 
}