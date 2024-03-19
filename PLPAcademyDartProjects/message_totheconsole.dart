import 'dart:io';

void main() {
  // Prompting the user for input
  print("Please enter a number: ");
  int number = int.parse(stdin.readLineSync()!);

  // Checking the number and printing the message accordingly
  if (number > 10) {
    print("Your number is greater than 10");
  } else if (number < 10) {
    print("Your number is less than 10");
  } else {
    print("Your number is equal to 10");
  }
}
