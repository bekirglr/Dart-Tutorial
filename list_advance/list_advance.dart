import 'cars_brands.dart';

void main() {
  var line = "*" * 10;
  /*
  Arabalar listesi oluştur.
  Arabanın markası(brand), modeli, ücreti kesin olacak.
  Arabanın tipi olmayabilir.
  Kullanıcı belirtmediği sürece tüm araçlar ikinci el sayılacak.
  */

  final carBrand = CarBrand(
      brand: CarBrands.Audi, model: 2020, price: 300.000, isSecondHand: false);
  print(carBrand);

  //4 tanem arabam var
  final carItems = [
    CarBrand(
      brand: CarBrands.BMW,
      model: 2024,
      price: 270.000,
    ),
    CarBrand(
      brand: CarBrands.Audi,
      model: 2013,
      price: 300.000,
    ),
    CarBrand(
        brand: CarBrands.Mercedes,
        model: 1980,
        price: 350.000,
        isSecondHand: false),
    CarBrand(
      brand: CarBrands.Volvo,
      model: 2021,
      price: 250.000,
    ),
  ];

  final newCar = CarBrand(brand: CarBrands.Volvo, model: 2021, price: 250.000);
  print(line);

  //Kaç tanesi ikinci el?
  final resultCount =
      carItems.where((element) => element.isSecondHand = true).length;
  print(resultCount);
  print(line);

  //Yeni bir araba geldi. Bizde var gibi?
  final isHaveCar = carItems.contains(newCar);
  if (isHaveCar) {
    print("Elimizde Aynısı var!");
  } else {
    print("Elimizde yok!");
  }

  //Markası Mercedes olan ve ücreti 300.000'den fazla olanların arbaların modelini yazdır.
  final resultMerc300 = carItems.where((element) {
    return element.model == 2021 && element.price < 300;
  }).join();

  print(resultMerc300);
  print(line);

  //Sadece isimleri yan yana getir
  final carNames = carItems.map((e) => e.brand).join(' - ');
  print(carNames);
  print(line);

  //Elimde Audi var mı?
  bool isHaveCarTesla = false;
  try {
    final teslaCar =
        carItems.singleWhere((element) => element.brand == CarBrands.Tesla);
    print(teslaCar.brand);
    isHaveCarTesla = true;
  } catch (e) {
    print("Araba yok!");
    isHaveCarTesla = false;
  } finally {
    print("Varlığı sorgulandı: $isHaveCarTesla");
  }
  //finally her durumda çalışır
  print(line);

  //Tesla araba yokmuş. O halde ekle
  final _teslaCar = CarBrand(brand: CarBrands.Tesla, model: 2023, price: 10000);
  carItems.add(_teslaCar);

  //Fiyatları azdan çoğa ve çoktan aza sırala
  carItems.sort((first, second) => first.price.compareTo(second.price));
  print('a < b $carItems');
  carItems.sort((first, second) => second.price.compareTo(first.price));
  print('a > b $carItems');

  //Markası BMW olan ve fiyatı 500 den büyük araçları listeden sil.
  carItems.remove(_teslaCar);
  print(carItems);
  carItems.removeWhere(
      (element) => element.brand == CarBrands.BMW || element.price < 300);
  print(carItems);
}
