/* 
1. Bir dizideki en büyük sayıyı bulan bir algoritma yazın.
2. Bir dizideki sayıların toplamını bulan bir algoritma yazın.
3. Bir dizideki tek sayıların ve çift sayıların sayısını bulan bir algoritma yazın.
4. Bir dizideki elemanları tersine çeviren bir algoritma yazın.
5. İki sıralı dizideki tekrar eden elemanları bulan bir algoritma yazın.
*/

void main() {
  print('***********EXP 1***********');
  final List<int> expList1 = [2, 8, 5, 0, 99];
  int max = expList1[0];
  for (var i = 0; i < expList1.length; i++) {
    if (expList1[i] > max) {
      max = expList1[i]; // Bu elemanı en büyük olarak güncelliyoruz
    }
  }
  print('Dizinin en büyük sayısı: $max');

  print('***********EXP 2***********');
  final List<int> expList2 = [1, 5, 0, 99];
  var expSum2 = 0;

  for (var i = 0; i < expList2.length; i++) {
    expSum2 += expList2[i];
  }
  // for (var i in expList2) {
  //   expSum2 += i;
  // }
  print(expSum2);
}
