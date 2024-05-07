class FilmCategory {}

abstract class ICinemaCategory {
  final String name;
  final String director;
  final int? ticketPrice;

  ICinemaCategory(this.name, this.director, this.ticketPrice);
}

class ComedyCinema extends ICinemaCategory {
  final double discount;

  ComedyCinema(String name, String director, int? ticketPrice, this.discount)
      : super(name, director, null);
}

class HorrorCinema extends ICinemaCategory {
  HorrorCinema(String name, String director) : super(name, director, null);
}

class ActionCinema extends ICinemaCategory {
  ActionCinema(String name, String director, int ticketPrice)
      : super(name, director, ticketPrice);
}

class RomanticCinema extends ICinemaCategory {
  RomanticCinema(String name, String director, int ticketPrice)
      : super(name, director, ticketPrice);
}
