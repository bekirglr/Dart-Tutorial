void main() {
  //iki hesaptaki paraların toplamını göster
  final String line = "*" * 10;
  Bank account1 = Bank(300, '2');
  Bank account2 = Bank(150, '2');

  print(account1 + account2);
  print(line);

  //id'si aynı olan hesaplar aynı hesaptır.
  print(account1 == account2);
  print(line);

  //Diğer bankadan bir modül alındı. Bunu ekle ve müşterinin parasını sorgula
  /*
  Diğer bankanın herhangi bir constructor'u yoksa, sadece işini yapıp geri döndürüyor ise
  "mixin" kullanmak mantıklı olur. 
  */

  //account1'e para ekle ve ID'sini bir arttır ve adını değiştir. Birden fazla işlem ard arda!
  account1.money += 10;
  account1
    ..money += 10
    ..id = "3"
    ..updateName('Cedric');
  //..name = ;
  print(account1);
}

class Bank with BankMixin {
  int money;
  String id;
  String? name;

  Bank(this.money, this.id);

  void updateName(String name) {
    this.name = name;
  }

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

  @override
  void sayBankName() {
    // TODO: implement sayBankName
    calculateMoney(money);
  }
}

mixin BankMixin {
  void sayBankName();

  void calculateMoney(int money) {
    print(money);
  }
}
