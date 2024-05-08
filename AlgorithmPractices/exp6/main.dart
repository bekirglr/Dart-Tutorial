//Bir sinema olsun
//Cinema name'i, directory, ticket prices'ı olsun
//Comedy sinemalarında %50 discount olsun
//Horror cinema'sı bedava olsun

import 'film_collection.dart';

void main() {
  var film1 = ComedyFilm("Charlie Chaplin", "Rico", 50);
  var film2 = RomanticFilm("Love", "Jennie", 100, 20);
  var film3 = HorrorFilm("The Dark Night", "Cedric", 120);

  //Kullanıcı oluştur ve bir film seç
  var user = User("John Doe");
  user.selectFilm(film1);
  user.printSelectedFilmInfo();
  print("-" * 10);
  user.selectFilm(film2);
  user.printSelectedFilmInfo();
  print("-" * 10);
  user.selectFilm(film3);
  // Seçilen film hakkında bilgileri yazdır
  user.printSelectedFilmInfo();
}

class User {
  final String name;
  IFilmCategory? selectedFilm;

  User(this.name);

  // Kullanıcının film seçmesini sağlar
  void selectFilm(IFilmCategory film) {
    selectedFilm = film;
  }

  // Seçili film hakkında bilgileri yazdırır
  void printSelectedFilmInfo() {
    if (selectedFilm == null) {
      print('Henüz bir film seçilmedi');
    } else {
      print("Seçili film: ${selectedFilm!.name}");
      print("Yönetmen: ${selectedFilm!.director}");
      print("Fiyat: £${selectedFilm!.price}");
    }
  }
}
