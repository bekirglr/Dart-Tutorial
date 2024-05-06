void main() {
  int userMoney = 100;
  final customerBuy = Product.oil;

  if (customerBuy == Product.oil) {}
  if (customerBuy.name == 'oil') {}

  switch (customerBuy) {
    case Product.bread:
      userMoney -= 5;
      print(userMoney);
    case Product.oil:
      userMoney -= 50;
      print(userMoney);
    case Product.milk:
      userMoney -= 10;
      print(userMoney);
    case Product.water:
      userMoney -= 5;
      print(userMoney);
  }

  if (customerBuy.isCheckName('oil')) {
    print("Buy oil");
  }
}

enum Product {
  bread,
  oil,
  milk,
  water,
}

extension OilSelectedExtension on Product {
  bool isCheckName(String name) {
    return this.name == name;
  }
}
