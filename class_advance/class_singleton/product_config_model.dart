class ProductConfig {
  static final ProductConfig instance = ProductConfig._('rQkSvPrsjStoiA');

  final String apiKey;

  ProductConfig._(this.apiKey);
}

//Lazy Singleton
class ProductLazySingleton {
  static ProductLazySingleton? _instnace;
  static ProductLazySingleton get instance {
    if (_instnace == null) _instnace = ProductLazySingleton._init();
    return _instnace!;
  }

  ProductLazySingleton._init();
}



//Altta ki kullanım ile üstte ki kullanım aynı amacı taşıyor.
//Üstte ki kullanım eager kullanım şekli,
//Altta ki kullanım lazy kullanım şeklidir.