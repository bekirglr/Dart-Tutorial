void main() {
  final user1 = _User("Rico", age: 19);

  // if ((user1.age ?? 0) < 18) {}
  if (user1.age is int) {
    if (user1.age! < 18) {
      print("18'den küçük!!");
      user1.updateMoneyWithString("15");
    }
  }
  // "!" ile force kullanmamda sakınca yok
  //çünkü birinci if içerisinde age'in null olmadığını
  // int mi? sorusu ile sağlamış oldum. Eğer int ise ... yani null değil ise ...
  //Kullancının parası var ama paranın tipi değişkenlik gösterebiliyor (String int)
  //Parası olan kullanıcının verisi "on beş"'.de yazabilir "15"'te yazabilir
}

class _User {
  final String name;
  int? age;

  dynamic moneyType; // <====

  _User(this.name, {this.age});

  void updateMoneyWithString(String metin) {
    moneyType = metin;
  }

  void updateMoneyWithNumber(int sayi) {
    moneyType = sayi;
  }
}
/*
dynamic değişkenlerde ilk olarak hangi tanım kullanılırsa kod o tanımla çalışmaya devam eder ve
ikinci tanım patlar.
Örneğin yukarıda ki kod parçasında moneyType hem String hem de int olarak tanımlanmış. 
ana sınıf içerisnde ise String olarak kullanılmış. O halde artık moneyType dynamic'lik özelliğini kaybedip
*/