void main() {
  //iki hesaptaki paraların toplamını göster
  final String line = "*" * 10;
  Bank account1 = Bank(300, '2');
  Bank account2 = Bank(150, '2');

  print(account1 + account2);
  print(line);

  //id'si aynı olan hesaplar aynı hesaptır.
  print(account1 == account2);
}

class Bank {
  final int money;
  final String id;

  Bank(this.money, this.id);

  int operator +(Bank newBank) {
    return (this.money + newBank.money);
  }

  int operator -(Bank newBank) {
    return (this.money - newBank.money);
  }

  @override
  String toString() {
    // TODO: implement toString
    return super.toString() + 'Rico';
  }

  @override
  bool operator ==(Object object) {
    return object is Bank && object.id == id;
  }

  @override
  int get hashCode => money.hashCode ^ id.hashCode;
}
