void main() {
  //Öğrencinin aldığı puana göre başarılır başarısız değerlendirmesini yapan algoritmayı yaz

  final int classDegree = 3;
  const int successValueHeight = 5;
  bool isSuccess = false;

  switch (classDegree) {
    case successValueHeight:
      print('Basarili!');
      isSuccess = true;
      break;
    case 3:
      print('Orta!');
      isSuccess = true;
      break;
    case 2:
      print('Kötü!');
      isSuccess = true;
      break;
    default:
      print('Basarisiz!');
      isSuccess;
  }
  print('Öğrencinin Puanı: $classDegree');
  print('Öğrencinin Durumu: $isSuccess');
}
