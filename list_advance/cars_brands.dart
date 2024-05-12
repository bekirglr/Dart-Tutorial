class CarBrand {
  final carBrands brand;
  final int model;
  final double price;
  final String? carType;
  late bool isSecondHand;

  CarBrand({
    required this.brand,
    required this.model,
    required this.price,
    this.carType,
    this.isSecondHand = true,
  });

  @override
  bool operator ==(covariant CarBrand other) {
    if (identical(this, other)) return true;

    return other.brand == brand &&
        other.model == model &&
        other.price == price &&
        other.carType == carType &&
        other.isSecondHand == isSecondHand;
  }

  @override
  int get hashCode {
    return brand.hashCode ^
        model.hashCode ^
        price.hashCode ^
        carType.hashCode ^
        isSecondHand.hashCode;
  }

  @override
  String toString() {
    return '$model - $price';
  }
}

enum carBrands {
  BMW,
  Mercedes,
  Audi,
  Volvo,
}
