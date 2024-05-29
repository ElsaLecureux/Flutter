import 'dart:io';

bool checkIfWordPalindrome(word) {
    List<String> wordChars = word.split('');
    bool palindrome = false;
    for (var i = 0; i < wordChars.length; i++) {
       if(wordChars[i] == wordChars[wordChars.length-i-1]) {
        print(wordChars[i]);
        print(wordChars[wordChars.length-i-1]);
        palindrome = true;
       } else palindrome = false;
    }
    return palindrome;
}

void main () {
    print("Enter a word");
    var word  = stdin.readLineSync();
    print(checkIfWordPalindrome(word) ? "Your word is a palindrome" : "Your word is not a palindrome");
}