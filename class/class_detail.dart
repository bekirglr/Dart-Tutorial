//required id
//required name
//age is nullable
//city is nullable
//required money
//id is private
class Users {
  late final String _id;
  late final String name;
  late final int? age;
  late final String? city;
  late double money;
  //class.dart dosyasında money'e para ekleyeceğmizden final'i kaldırdım.

  //constraction method
  Users(
      {required String id,
      required String name,
      required double money,
      int? age,
      String? city}) {
    _id = id; //Sadece file private
    this.name = name;
    this.age = age;
    this.city = city;
    this.money = money;
  }
  // Users({required this.id, required this.name, required this.money, this.age, this.city,}) {}

  bool isSpecialUser(String id) {
    return _id == id;
  }

  //ID null check !!
  /*
  bool isEmptyId() {
    return _id.isEmpty;
  }
  */
  //
  // bool isEmptyId() => _id.isEmpty;
  bool get isEmptyId => _id.isEmpty;
}

class UserBank {
  late final String name;
  int _userBankMoney;

  int get userBankMoney => _userBankMoney;
  set userBankMoney(int? userBankMoney) {
    _userBankMoney = userBankMoney == null ? 0 : userBankMoney; //short if
  }

  UserBank(this.name, this._userBankMoney) {}
}
