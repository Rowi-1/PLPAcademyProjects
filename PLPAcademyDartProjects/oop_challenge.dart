import 'dart:io';

// Interface
abstract class Animal {
  void makeSound();
}

// Base class
class Mammal implements Animal {
  String name;
  
  Mammal(this.name);
  
  @override
  void makeSound() {
    print("$name makes a generic mammal sound.");
  }
}

// Subclass overriding method
class Cat extends Mammal {
  Cat(String name) : super(name);
  
  @override
  void makeSound() {
    print("$name meows.");
  }
}

// Class initialized from a file
class Dog extends Mammal {
  Dog(String name) : super(name);
  
  factory Dog.fromFile(String filePath) {
    var file = File(filePath);
    var name = file.readAsStringSync().trim();
    return Dog(name);
  }
}

void main() {
  // Demonstrating loop usage
  for (int i = 0; i < 3; i++) {
    print("Loop iteration $i");
  }
  
  // Creating instances of classes
  var cat = Cat('Whiskers');
  var dog = Dog.fromFile('dog_name.txt');
  
  // Calling methods
  cat.makeSound();
  dog.makeSound();
}
