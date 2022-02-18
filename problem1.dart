import 'dart:io';

void main(List<String> args) {

  print("Enter the number . ");
  int num = int.parse(stdin.readLineSync()!);
  print("The factorial of $num is ${factorialOfNum(num)} . ");
}

//calculate the factorial of the given number by recursion.
int factorialOfNum(int x) {
  if (x == 1) {
    return 1;
  }
    return x*factorialOfNum(x-1);
}
