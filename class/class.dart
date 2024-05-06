import 'class_detail.dart';

void main() {
  final List<int?> usersMoney = [200, null, 500];
  for (var element in usersMoney) {
    if (element != null && element > 0) {
      print("You have money!");
    } else {
      print("No money!");
    }
    //conditional expression
    bool result = controlMoney(element) == null ? false : true;
    print(result);
  }

  print('*' * 10);
  Users newUser =
      Users(id: "1", name: 'Rico', money: 500, age: 22, city: 'Istanbul');
  print(newUser.name);
  Users newUser2 = Users(id: "2", name: 'Angela', money: 1000);
  print(newUser2.age);

  print('*' * 10);
  //id'si 1 olana ayrıcalık tanı
  print("${newUser2.name}: £${newUser2.money}");
  if (newUser2.isSpecialUser("2")) {
    newUser2.money += 100;
    print('${newUser2.name}: You won a £100 coupon ${newUser2.money}');
  } else if (newUser2.isEmptyId) {
    print("ID is Not Found!");
  }
}

int? controlMoney(int? money) {
  if (money == null && money == 0) {
    return money;
  } else {
    return null;
  }
}

/*
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
  late final money;

  //constraction method
  Users(
      {required String id,
      required String name,
      required double money,
      int? age,
      String? city}) {
    id = _id; //Sadece file private oluşturur. 
    this.name = name;
    this.age = age;
    this.city = city;
    this.money = money;
  }
  // Users({required this.id, required this.name, required this.money, this.age, this.city,}) {}
  
}
*/
