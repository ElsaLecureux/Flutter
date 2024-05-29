import 'dart:io';
import 'dart:math';

main () {

    int randomNumber = Random().nextInt(100);
    print(randomNumber);
    print('Guess my number, between 0 and 100.');
    startGame () {
         int playerNumber = int.parse(stdin.readLineSync()!);
        if (playerNumber > randomNumber) {
            print ("it's too high, try again");
            startGame ();
        }
        if (playerNumber < randomNumber) {
            print ("it's too low, try again"); 
            startGame ();
        }
        if (playerNumber == randomNumber) print ("Well done, you guessed the random number!");
    }
    startGame ();
} 