/* 
1. Bir dizideki en büyük sayıyı bulan bir algoritma yazın.
2. Bir dizideki sayıların toplamını bulan bir algoritma yazın.
3. Bir dizideki tek sayıların ve çift sayıların sayısını bulan bir algoritma yazın.
4. Bir dizideki elemanları tersine çeviren bir algoritma yazın.
5. İki sıralı dizideki tekrar eden elemanları bulan bir algoritma yazın.
*/

void main() {
//********1********
  final List<int> numbers = [2, 8, 5, 0, 99];
  int max = numbers[
      0]; // Başlangıçta en büyük sayıyı ilk eleman olarak kabul ediyoruz
  for (var i = 0; i < numbers.length; i++) {
    // Eğer mevcut eleman, şu ana kadar bulduğumuz en büyük sayıdan büyükse

    if (numbers[i] > max) {
      // Eğer mevcut eleman, şu ana kadar bulduğumuz en büyük sayıdan büyükse
      max = numbers[i]; // Bu elemanı en büyük olarak güncelliyoruz
    }
  }
  print('Dizinin en büyük sayısı: $max');
}
