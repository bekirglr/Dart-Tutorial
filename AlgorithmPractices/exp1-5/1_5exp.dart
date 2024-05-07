/* 
1. Bir dizideki en büyük sayıyı bulan bir algoritma yazın.
2. Bir dizideki sayıların toplamını bulan bir algoritma yazın.
3. Bir dizideki tek sayıların ve çift sayıların sayısını bulan bir algoritma yazın.
4. Bir dizideki elemanların ortalamasını bulan bir algoritma yazın.
5. Rico'nun bir miktar parası olsun ve market'e gitsin neler alabilir?
*/

void main() {
  exp1();
  exp2();
  exp3();
  exp4();
  exp5();
}

void exp1() {
  print('***********EXP 1***********');
  final List<int> expList1 = [2, 8, 5, 0, 99];
  int max = expList1[0];
  for (var i = 0; i < expList1.length; i++) {
    if (expList1[i] > max) {
      max = expList1[i]; // Bu elemanı en büyük olarak güncelliyoruz
    }
  }
  print('Dizinin en büyük sayısı: $max');
}

void exp2() {
  print('***********EXP 2***********');
  final List<int> expList2 = [1, 5, 0, 99];
  var expSum2 = 0;

  for (var i = 0; i < expList2.length; i++) {
    expSum2 += expList2[i];
  }
  // for (var i in expList2) {
  //   expSum2 += i;
  // }
  print('Sayıların toplamı = $expSum2');
}

void exp3() {
  print('***********EXP 3***********');
  final List<int> expList3 = [1, 20, 53, 99];
  var ciftSayi = 0;
  var tekSayi = 0;
  for (var i in expList3) {
    if (i % 2 == 0) {
      ciftSayi++;
    } else {
      tekSayi++;
    }
  }
  print('Çift sayı miktarı: $ciftSayi');
  print('Tek sayı miktarı: $tekSayi');
}

void exp4() {
  print('***********EXP 4***********');
  final List<int> expList4 = [1, 5, 0, 99];
  var sayiAdeti = 0;
  // ignore: unused_local_variable
  for (var i in expList4) {
    sayiAdeti++;
  }
  var expSum4 = 0;
  for (var i in expList4) {
    expSum4 += i;
  }
  int ortalama = expSum4 ~/ sayiAdeti;
  print('Ortalama: $ortalama');
}

void exp5() {
  print('***********EXP 5***********');
  Map<String, int> market = {
    'bread': 10,
    'milk': 20,
    'oil': 40,
    'chocolate': 5,
  };
  int ricoMoney = 30;
  for (var product in market.keys) {
    if (ricoMoney > market[product]!) {
      print('$product: ${market[product]}£');
    }
  }
}
