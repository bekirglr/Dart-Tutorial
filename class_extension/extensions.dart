void main() {
  // ignore: unused_local_variable
  int userMoney = 100;
  final customerBuy = Product.oil;

  if (customerBuy == Product.oil) {}
  if (customerBuy.name == 'oil') {}
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
