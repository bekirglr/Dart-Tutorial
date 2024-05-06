void main() {
  final userNormal = User("Rico", 22, 500);
  final specialUser = SpecialUser("Cedric", 22, 200, 50);

  userNormal.sayMoneyWithUserName();
  specialUser.sayMoneyWithUserName();
  print("*" * 10);
  print(
      'Special user money: ${specialUser.money} + ${specialUser._couponCode}');
  print('Kupon kullanıldı: ${specialUser.calculateMoney}');
}

abstract class IUser {
  final String name;
  final int age;
  final int money;

  IUser(this.name, this.age, this.money);
  void sayMoneyWithUserName() {
    print('$name - $money paranız var.');
  }
}

//Tüm kullanıcılar banka isimleri ile birlikte paralarını görebilsin
class User extends IUser {
  User(String name, int age, int money) : super(name, age, money) {}

  void bankUserLogic() {
    print(money);
  }
}

class SpecialUser extends IUser {
  late final int _couponCode;

  SpecialUser(String name, int age, int money, int couponCode)
      : super(name, age, money) {
    _couponCode = couponCode;
  }

//Cupon'lu parayı hesapla ve göster
  int get calculateMoney => money + _couponCode;
}
