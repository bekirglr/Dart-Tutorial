void main() {
  //football club
  Map<String, int> club = {
    'Messi': 10,
    'Ronaldo': 7,
    'Neymar': 11,
  };

  for (var item in club.keys) {
    print('${item} - ${club[item]}');
  }

  for (var i = 0; i < club.length; i++) {
    print('${club.keys.elementAt(i)} ${club.values.elementAt(i)}');
  }
  print('********************');
  //Bank customers and accounts. Check accounts
  Map<String, List<int>> gBank = {
    'Rico': [5000, 300, 1000],
    'Jennie': [100, 700]
  };
  gBank['Angela'] = [500];
  gBank['Cedric'] = [1000, 700];

  for (var name in gBank.keys) {
    //Banka içerisinde ki tüm itemleri dolaş
    for (var money in gBank[name]!) {
      //Kullanıcıların hesaplarını dolaş
      if (money > 500) {
        print('Zenginsin!');
      }
    }
  }
  print('********************');
  //Bankada ki müşterilerin hesaplarında toplam ne kadar para var?
  for (var name in gBank.keys) {
    // gBank[item]! --> Müşterinin hesaplarını dolaş demek
    var sumResult = 0;
    for (var money in gBank[name]!) {
      sumResult += money;
    }
    print('$name - Toplam para: $sumResult');
  }
}
