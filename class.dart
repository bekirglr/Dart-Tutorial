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
}

int? controlMoney(int? money) {
  if (money == null && money == 0) {
    return money;
  } else {
    return null;
  }
}

class Users {}
