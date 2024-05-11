void main() {
  //iki hesaptaki paraların toplamını göster
  final String line = "*" * 10;
  Bank account1 = Bank(300, '2');
  Bank account2 = Bank(150, '2');

  print(account1 + account2);
  print(line);

  //id'si aynı olan hesaplar aynı hesaptır.
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
}
