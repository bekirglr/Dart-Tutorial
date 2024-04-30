void main() {
//Müşterinin parası 50'den küçük ise borcunu ödeyemesin
//Müşterinin parası 50 ise borcunu asgari ödesin
//müşterinin parası 50'den büyük ise borcunu kapatsın

  var customer1Money = 30;
  final int asgariTutar = 50;
  final int maas = 100;

  if (customer1Money < asgariTutar) {
    print("Yeteri kadar paraniz yok!");
  } else if (customer1Money == asgariTutar) {
    print("Borcunuzun asgari tutarini ödeyebilirsiniz!");
  } else {
    print("Borcunuz Kapanmistir!");
  }

  customer1Money += maas;

  if (customer1Money < asgariTutar) {
    print("Yeteri kadar paraniz yok!");
  } else if (customer1Money == asgariTutar) {
    print("Borcunuzun asgari tutarini ödeyebilirsiniz!");
  } else {
    print("Borcunuz Kapanmistir!");
  }

  print("------------------------------");
  //2 karakterden uzun isimler geçerli isim olsun
  //karakter uzunluğu 2'den az olanlar için geçersiz uyarısı verilsin
  //Geçerli isimleri yan yana göster. Aralarında boşluk olsun

  String name1 = "Rico";
  String name2 = "Jennie";
  String name3 = "Robert";
  String name4 = "Pi";
  final nameLenght = 2;
  String result = '';

  if (name1.length > nameLenght) {
    result += name1 + ' ';
  }
  if (name2.length > nameLenght) {
    result += name2 + ' ';
  }
  if (name3.length > nameLenght) {
    result += name3 + ' ';
  }
  if (name4.length > nameLenght) {
    result += name4 + ' ';
  }
  if (result.isEmpty) {
    print("Isim bulunamadi!");
  } else {
    print(result);
  }
}
