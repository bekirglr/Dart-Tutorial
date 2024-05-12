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
      brand: carBrands.Audi, model: 2020, price: 300.000, isSecondHand: false);
  print(carBrand);

  //4 tanem arabam var
  final carItems = [
    CarBrand(
      brand: carBrands.BMW,
      model: 2024,
      price: 270.000,
    ),
    CarBrand(
      brand: carBrands.Audi,
      model: 2013,
      price: 300.000,
    ),
    CarBrand(
        brand: carBrands.Mercedes,
        model: 1980,
        price: 350.000,
        isSecondHand: false),
    CarBrand(
      brand: carBrands.Volvo,
      model: 2021,
      price: 250.000,
    ),
  ];

  final newCar = CarBrand(brand: carBrands.Volvo, model: 2021, price: 250.000);
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
}
