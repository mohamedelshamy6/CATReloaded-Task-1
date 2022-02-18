import 'dart:io';
import 'dart:core';

void main(List<String> args) {
  print("Enter the word , please! ");
  String? word = stdin.readLineSync();
  int lengthOfWord = word!.runes.length;

  for (int i = 0, j = lengthOfWord - 1; i <= lengthOfWord; i++, j--) {
    //checking if the char is equal to its equivalent.
    if (word[i] == word[j]) {
      print("$word is palindromic .");
      break;
    } else {
      print("$word is not palindromic .");
      break;
    }
  }
}
