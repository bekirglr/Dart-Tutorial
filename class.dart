void main() {
  final List<int?> usersMoney = [200, null, 500];
  for (var element in usersMoney) {
    if (element != null && element > 0) {
      print("You have money!");
    } else {
      print("No money!");
    }
  }
}

class Users {}
