class Student {
  String name;
  int age;
  String gradeLevel;

  Student(this.name, this.age, this.gradeLevel);

  void printInfo() {
    print('Student: $name, Age: $age, Grade Level: $gradeLevel');
  }
}

class Teacher {
  String name;
  int age;
  String subject;

  Teacher(this.name, this.age, this.subject);

  void printInfo() {
    print('Teacher: $name, Age: $age, Subject: $subject');
  }
}

class School {
  void createAndPrint() {
    // Creating instances of Student and Teacher
    var student = Student('John', 15, '10th');
    var teacher = Teacher('Mr. Smith', 35, 'Math');

    // Calling methods to print information
    student.printInfo();
    teacher.printInfo();
  }
}

void main() {
  var school = School();
  school.createAndPrint();
}
