import 'dart:io';

void main() {
  // Prompt the user for input
  print("Enter a number:");
  
  // Read user input from the console
  String userInput = stdin.readLineSync();
  
  // Parse the input string to an integer
  int number = int.tryParse(userInput);
  
  // Check if parsing was successful and the number is not null
  if (number != null) {
    // Check the number against the criteria
    if (number > 10) {
      print("Your number is greater than 10");
    } else if (number < 10) {
      print("Your number is less than 10");
    } else {
      print("Your number is equal to 10");
    }
  } else {
    // Handle invalid input
    print("Invalid input. Please enter a valid number.");
  }
}
