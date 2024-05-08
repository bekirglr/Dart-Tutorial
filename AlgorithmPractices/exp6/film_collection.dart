abstract class IFilmCategory {
  final String name;
  final String director;
  final int price;

  IFilmCategory(this.name, this.director, this.price);
}

class RomanticFilm extends IFilmCategory {
  late final int _discount;

  RomanticFilm(String name, String director, int price, int discount)
      : super(name, director, price) {
    _discount = discount;
  }

  int get CalculateMoney => price - _discount;
}

class ComedyFilm extends IFilmCategory {
  ComedyFilm(String name, String director, int price)
      : super(name, director, price);
}

class HorrorFilm extends IFilmCategory {
  HorrorFilm(String name, String director, int price)
      : super(name, director, price);
}
