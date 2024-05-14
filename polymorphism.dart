void main() {
  IUser user = Turk();
  user.sayHello();

  user = English();
  user.sayHello();
}

abstract class IUser {
  final String name;

  IUser(this.name);
  void sayHello() {}
}

class Turk implements IUser {
  @override
  String get name => 'Rico';

  @override
  void sayHello() {
    print('Merhaba $name!');
  }
}

class English implements IUser {
  @override
  String get name => 'Cedric';

  @override
  void sayHello() {
    print('Hello $name!');
  }
}
