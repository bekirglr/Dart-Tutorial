//Bir sinema olsun
//Cinema name'i, directory, ticket prices'ı olsun
//Comedy sinemalarında %50 discount olsun
//Horror cinema'sı bedava olsun

import 'film_collection.dart';

void main() {
  ComedyFilm("Charlie Chaplin", "Rico", 50);
  RomanticFilm("Love", "Jennie", 100, 20);
  HorrorFilm("The Dark Night", "Cedric", 120);

  //Kullanıcı oluştur ve bir film seç
  var user = User("John Doe");
  user.selectFilm(RomanticFilm("Love", "Jennie", 100, 20));
  if (user.selectedFilm == null) {
    print('Henüz bir film seçilmedi');
  }
  print("Seçilen Film ==> ${user.selectedFilm?.name}");
  print("Yönetmen: ${user.selectedFilm?.director}");
  print("Fiyat: £${user.selectedFilm?.price}");
}

class User {
  final String name;
  IFilmCategory? selectedFilm;

  User(this.name);

  // Kullanıcının film seçmesini sağlar
  void selectFilm(IFilmCategory film) {
    selectedFilm = film;
  }
}
