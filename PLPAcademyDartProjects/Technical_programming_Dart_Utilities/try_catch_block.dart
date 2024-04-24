void main() {
  try {
    int result = 10 ~/ 0; // Division by zero will throw an exception
    print('Result: $result');
  } catch (e) {
    print('Error: $e'); // Output: Error: IntegerDivisionByZeroException
  }
}
