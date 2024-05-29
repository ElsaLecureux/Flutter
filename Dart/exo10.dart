import 'dart:io';

main () {
    isNumberPrime(number) {
        bool isPrime = false;
        for (var i =2; i < number; i++) {
            if (number % i == 0 ) {
               return isPrime = false;
            } else isPrime = true;
        }
        return isPrime;
    }
    print('Write a number:');
    var num = int.parse(stdin.readLineSync()!);
    print(isNumberPrime(num) ? 'Your number is a Prime number': 'Your number is not a Prime number');
}