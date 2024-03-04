void main() {
  // Example of int data type
  int age = 30;
  print('Age: $age');

  // Example of double data type
  double temperature = 25.5;
  print('Temperature: $temperature');

  // Example of String data type
  String name = 'John Doe';
  print('Name: $name');

  // Example of List data type (List of integers)
  List<int> numbers = [1, 2, 3, 4, 5];
  print('Numbers: $numbers');

  // Example of accessing elements in a List
  print('First number: ${numbers[0]}');
  print('Last number: ${numbers[numbers.length - 1]}');

  // Example of Map data type (Map of String keys and int values)
  Map<String, int> scores = {
    'Math': 90,
    'Science': 85,
    'History': 95,
  };
  print('Scores: $scores');

  // Example of accessing elements in a Map
  print('Math score: ${scores['Math']}');
  print('Science score: ${scores['Science']}');
}