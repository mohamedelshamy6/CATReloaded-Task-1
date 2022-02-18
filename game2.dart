import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  String chars = "abcdefghijklmnopqrstuvwxyz";
  String capitalChars = chars.toUpperCase();
  String nums = "1234567890";
  String spectialChars = "!@#\$%^&*.,";
  List list1 = [chars, capitalChars, nums, spectialChars];

  print("Enter the length you want for your password .");
  int length = int.parse(stdin.readLineSync()!);
  randomPassword(length, list1);

//Loop to check if the user want another password.
  while (true) {
    print("Another? (yes or no) ");
   String? another = stdin.readLineSync();
    if (another == "yes")
      randomPassword(length, list1);
    else if (another == "no")
      break;
    else
      print("Invalid input .");
  }

}

// Function to generate a random password.
void randomPassword(int passlength, List x) {
  Random random = new Random();
  StringBuffer fromList = new StringBuffer();
  String? output;
  int rnd2, rnd3;

/* A loop to get a random chars from a random values of list1,
put them into a string buffer and convert the result to string. */
  for (int y = 1; y <= passlength; y++) {
    rnd2 = random.nextInt(4);

/* Check if rnd2 is 0 or 1,its mean that we choose a letter based on list1,
so rnd3 will be a random value from 0 to 25 (number of alphabet letters).
if rnd2 is 2 , its mean that we choose a number and so on.
*/
    if (rnd2 == 0 || rnd2 == 1) {
      rnd3 = random.nextInt(26);
    } else {
      rnd3 = random.nextInt(10);
    }

    String result = x[rnd2][rnd3];
    fromList.write(result);
    output = fromList.toString();
  }
  print(output);
}
