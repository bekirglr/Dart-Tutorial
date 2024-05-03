void main() {
  final int money = 100;
  final int money2 = 110;

  if (money > 100) {
    print("Hoşgeldiniz!");
  } else {
    print("Yetersiz Para!");
  }
  if (money2 > 100) {
    print("Hoşgeldiniz!");
  } else {
    print("Yetersiz Para!");
  }

  //Bankada ki müşterilerin parası var
  //Parası azdan çoğa göre sırala
  //Bankaya yeni müşteri parası ekle

  List<int> moneys = [100, 300, 500, 200];

  print("Musteri 1'in parasi : ${moneys[0]}");

  print(moneys);
  moneys.add(999);
  moneys.sort();
  print(moneys);
  moneys.insert(3, 400);
  print(moneys);

/* --------------LOOP--------------------- */
  print('**************************');
//Bankada her müşterinin belirli miktarda parası olsun
//Parası 100'den büyük olan kredisini kapatsın
//Parası 45'ten büyük olan borcunu ödesin
//Parası 45'ten küçük olan ödeyemesin

  List<int> customerMoneys = [35, 60, 100, 45];
  customerMoneys.sort();
  for (int i = 0; i < customerMoneys.length; i++) {
    print("Customer${i} Money: ${customerMoneys[i]}");
    if (customerMoneys[i] >= 100) {
      print('Krediniz Kapandı!');
    } else if (customerMoneys[i] >= 45) {
      print('Asgari borç ödendi!');
    } else {
      print('Borcunuzu Ödeyiniz!');
    }
  }
  //Yapılan işlemlerin birde tersini yap
  print('-----Ters--------');
  for (int i = customerMoneys.length - 1; i >= 0; i--) {
    print("Customer${i} Money: ${customerMoneys[i]}");
    if (customerMoneys[i] >= 100) {
      print('Krediniz Kapandı!');
    } else if (customerMoneys[i] >= 45) {
      print('Asgari borç ödendi!');
    } else {
      print('Borcunuzu Ödeyiniz!');
    }
  }
}
