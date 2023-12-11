                                                                      //Answer A

void main() {

  var student = Student();
  var teacher = Teacher();


  student.displayRole();
  teacher.displayRole();
}


abstract class Role {

  void displayRole();
}

class Student implements Role {

  void displayRole() {
    print("I am a student.");
  }
}

class Teacher implements Role {

  void displayRole() {
    print("I am a teacher.");
  }
}


                                                                      //Answer B

void main() {

  var studentRole = Student();



  var studentPerson = Person("Md.Sakender Saikot", 23, "Baneshwar,Rajshahi", studentRole);



  print("Student: ${studentPerson.getName}, ${studentPerson.getAge}, ${studentPerson.getAddress}");
  studentPerson.displayRole();


}

abstract class Role {
  void displayRole();
}


class Person implements Role {
  String name;
  int age;
  String address;


  Role role;

  Person(this.name, this.age, this.address, this.role);


  String get getName => name;
  int get getAge => age;
  String get getAddress => address;



  void displayRole() {
    print("Role: ${role.runtimeType}");
  }
}


class Student implements Role {

  void displayRole() {
    print("I am a student.");
  }
}


                                                                      //Answer C

void main() {

  Student student = Student('Md.Sakender Saikot', 23, 00, ' A');

  student.displayRole();

  student.addCourseScore(90.0);
  student.addCourseScore(80.0);
  student.addCourseScore(70.0);
  student.addCourseScore(70.0);

  double averageScore = student.calculateAverageScore();
  print('Average Score: $averageScore');
}


class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void displayRole() {
    print('Role: Person');
  }
}

class Student extends Person {
  int studentID;
  String grade;
  List<double> courseScores = [];

  Student(String name, int age, this.studentID, this.grade) : super(name, age);

  @override
  void displayRole() {
    print('Role: Student');
  }

  void addCourseScore(double score) {
    courseScores.add(score);
  }

  double calculateAverageScore() {
    if (courseScores.isEmpty) {
      return 0.0;
    }
    double totalScore = courseScores.reduce((a, b) => a + b);
    return totalScore / courseScores.length;
  }
}



                                                                      //Answer D

void main() {

  var teacher = Teacher('Md.Sakender Saikot', 23, 'T123', ['Computer Fundamental', 'Computer Graphics']);
  teacher.displayRole();
  teacher.displayCoursesTaught();
}


class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void displayRole() {
    print('Role: Person');
  }
}

class Teacher extends Person {
  String teacherID;
  List<String> coursesTaught;

  Teacher(String name, int age, this.teacherID, this.coursesTaught)
      : super(name, age);

  @override
  void displayRole() {
    print('Role: Teacher');
  }

  void displayCoursesTaught() {
    print('Courses Taught by $name:');
    for (var course in coursesTaught) {
      print('- $course');
    }
  }}


                                                                      //Answer E
void main() {

  var system = StudentManagementSystem();
  system.run();
}

abstract class Role {
  void displayRole();
}


abstract class Student implements Role {
  void displayCoursesEnrolled();
}


abstract class Teacher implements Role {
  void displayCoursesTaught();
}


class Person implements Role {
  String name;
  int age;

  Person(this.name, this.age);

  @override
  void displayRole() {
    print('Role: Person');
  }
}


class StudentClass extends Person implements Student {
  List<String> coursesEnrolled;

  StudentClass(String name, int age, this.coursesEnrolled)
      : super(name, age);

  @override
  void displayCoursesEnrolled() {
    print('Courses Enrolled by $name:');
    for (var course in coursesEnrolled) {
      print('- $course');
    }
  }
  @override
  void displayRole() {
    print('Role: Student');
  }
}


class TeacherClass extends Person implements Teacher {
  String teacherID;
  List<String> coursesTaught;

  TeacherClass(String name, int age, this.teacherID, this.coursesTaught)
      : super(name, age);

  @override
  void displayCoursesTaught() {
    print('Courses Taught by $name:');
    for (var course in coursesTaught) {
      print('- $course');
    }
  }
  @override
  void displayRole() {
    print('Role: Teacher');
  }
}


class StudentManagementSystem {
  void run() {

    var student = StudentClass('Md.Sakender Saikot', 23, ['Computer Graphics', 'Computer Fundamental']);
    var teacher = TeacherClass('Tanvir Ahmed', 35, 'T123', ['Digital Image Processing', 'Digital Singnal Processing']);


    student.displayRole();
    student.displayCoursesEnrolled();

    teacher.displayRole();
    teacher.displayCoursesTaught();
  }
}
