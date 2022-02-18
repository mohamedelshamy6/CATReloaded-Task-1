import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  
  /* creating a random number.
  adding 1 to the random number to avoid "0" and include 10. */
  Random random = new Random(); 
  int randomNum = random.nextInt(10) + 1;

  //asking the player to guess the number.
  for (int x = 1; x <= 10; x++) {
    print("Please , Enter a number from 1 to 10 . ");
    int playerNum = int.parse(stdin.readLineSync()!);
    if (playerNum == 0) {
      print("Invalid number . ");
    } else if (playerNum == randomNum) {
      print("Well guessed! ");
      break;
    } else {
      print("Sorry , Try again .  ");
    }

  }
}
