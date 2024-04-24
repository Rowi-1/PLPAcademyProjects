import 'dart:io';

class CalculatorApp {
  void run() {
    stdout.write('Enter first number: ');
    var num1 = double.parse(stdin.readLineSync());

    stdout.write('Enter second number: ');
    var num2 = double.parse(stdin.readLineSync());

    stdout.write('Enter operation (+, -, *, /): ');
    var operation = stdin.readLineSync();

    var result;
    switch (operation) {
      case '+':
        result = add(num1, num2);
        break;
      case '-':
        result = subtract(num1, num2);
        break;
      case '*':
        result = multiply(num1, num2);
        break;
      case '/':
        result = divide(num1, num2);
        break;
      default:
        print('Invalid operation.');
        return;
    }

    print('Result: $result');
  }

  double add(double a, double b) => a + b;
  double subtract(double a, double b) => a - b;
  double multiply(double a, double b) => a * b;
  double divide(double a, double b) => a / b;
}

void main() {
  var calculator = CalculatorApp();
  calculator.run();
}
