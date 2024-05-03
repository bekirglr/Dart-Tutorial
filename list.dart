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
/* ---------------------------------------- */
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
}
