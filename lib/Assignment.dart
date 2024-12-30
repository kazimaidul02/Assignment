import 'dart:io';

abstract class Role{
  void displayRole();
}

class Person implements Role{
  String name;
  int age;
  String address;
  Person(this.name,this.age,this.address);

  @override
  void displayRole() {
  }
}

class Student extends Person {
  String studentID;
  String grade;
  List <int> courseScores = [];
  Student(this.studentID,this.grade,this.courseScores) : super('Kazi',36, 'Dhaka');

  @override
  void displayRole(){
    print("Role:Student");
  }
  double averageScore(){
    int sum=0;
    for (var score in courseScores){
      sum+=score;}
    return(sum/courseScores.length);
  }
}

class Teacher extends Person{
  String teacherID;
  List<String> coursesTaught = [];
  Teacher(this.teacherID,this.coursesTaught) : super('Shafin',55, 'Dhaka');

  @override
  void displayRole(){
    print("Role:Teacher");
  }

  coursesTaughtByTeacher(){
    print("Courses:");
    for (var courses in coursesTaught) {
      print(courses);
    }
  }
}

main() {
  Student StudentManagementSystem = Student("107", 'A', [70, 85, 88]);
  StudentManagementSystem.displayRole();
  print("Name:${StudentManagementSystem.name}");
  print("Age:${StudentManagementSystem.age}");
  print("Address:${StudentManagementSystem.address}");
  print("Student ID:${StudentManagementSystem.studentID}");
  print("Grade: ${StudentManagementSystem.grade}");
  print(
      "Average Score: ${StudentManagementSystem.averageScore().toStringAsFixed(
          2)}");

  print("\n");


  Teacher TeacherManagementSystem = Teacher("007", ['Bangla', 'Math', 'English']);
  TeacherManagementSystem.displayRole();
  print("Name:${TeacherManagementSystem.name}");
  print("Age:${TeacherManagementSystem.age}");
  print("Address:${TeacherManagementSystem.address}");
  print("ID: ${TeacherManagementSystem.teacherID}");
  TeacherManagementSystem.coursesTaughtByTeacher();
}