import 'dart:io';

void main () {
    String winner = '';
    String rock = 'rock';
    String scissors = 'scissors';
    String paper = 'paper';

    print("Player One, it's your turn Shifumi: type rock, paper or scissors");
    var playerOne = stdin.readLineSync();
    if (playerOne != null) playerOne = playerOne.toLowerCase();

    print("Player Two, it's your turn Shifumi: type rock, paper or scissors");
    var playerTwo = stdin.readLineSync();
    if (playerTwo != null) playerTwo = playerTwo.toLowerCase();

    print(playerTwo);
   
     if (playerOne == rock && playerTwo == scissors) {
        winner = 'Player One';
     } else if ( playerOne == paper && playerTwo == rock) {
        winner = 'Player One';
     } else if (playerOne == scissors && playerTwo == paper) {
        winner = 'Player One';
     } else if ( playerTwo == paper && playerOne == rock) {
        winner = 'Player Two';
     } else if ( playerTwo == rock && playerOne == scissors) {
        winner = 'Player Two';
     } else if ( playerTwo == scissors && playerOne == paper) {
        winner = 'Player Two';
     } else {
        winner = 'Nobody';
     }
 
     print("${winner} is the winner");
}