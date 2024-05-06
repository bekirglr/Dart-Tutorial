void main() {
  int userMoney = 100;
  final customerBuy = Product.oil;

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
}

enum Product {
  bread,
  oil,
  milk,
  water,
}
