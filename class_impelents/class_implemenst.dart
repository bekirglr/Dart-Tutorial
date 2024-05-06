void main() {}

abstract class IStudent {
  final String name;
  final int? age;

  IStudent(this.name, this.age);

  void saySomething() {
    print(name);
  }
}

class Student implements IStudent {
  final String name;
  final int? age;

  Student(this.name, this.age);

  @override
  void saySomething() {}
}

class Student2 implements IStudent {
  final String name;
  final int? age;

  Student2({required this.name, required this.age});

  @override
  void saySomething() {
    print("Hello");
  }
}
