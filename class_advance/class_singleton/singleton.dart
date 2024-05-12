import 'product_config_model.dart';

void main() {
  var line = "*" * 10;
  final product1 = Product('Cedric');
  product1.stock;

  //static kullandığım için nesne oluşturmadan product'taki ki money ve price erişebilirim
  Product.money;
  Product.price;

  void calcutaMoney() {
    if (Product.money < Product.price) {
      print('Para eklendi!');
      Product.money += 80;
    }
  }

  calcutaMoney();

  Product.incrementMoney(50);
  print(Product.money);
  print(line);

  //User class kullanarak order yap.
  final user1 = User('Rico', 'Macbook Pro');
  final newOrder = Product(user1.name);
  print(newOrder.name);

  print(Product.jennie().name);
  print(line);

  // ignore: unused_local_variable
  final newOrder2 = Product.fromUser(user1);

  ProductConfig.instance.apiKey;
  //ProductConfig'den nesne üretilemez. Sadece instance ile apiKey erişilir.
  print(ProductConfig.instance.apiKey);
  print(line);
  ProductLazySingleton.instance;
}

class Product {
  int stock = 5;
  String name;
  static int price = 100;
  static int money = 20;

  Product(this.name);

  static void incrementMoney(int newMoney) {
    money += newMoney;
  }

  Product.jennie([this.name = 'Jennie']) {}

  //Geriye değer döndüren constructor
  factory Product.fromUser(User user) {
    return Product(user.name);
  }
}

class User {
  final String name;
  final String order;

  User(this.name, this.order);
}


/*
Static tanımlanmış sınıf veya instance diğer dosya ve klasörlere public hale geliyor.
Bu her ne kadar kolay ve güzel görünsede tehlikeli bir kullanımdır.
çünkü bu kullanım yüüzdne sen sonuç olarak herkesin buna erişmesine ve
herkesin dokunmasına izin vermiş oluyorsun
Bu nedenle bu değişken çok rahat manüpüle edilip hiç anlamadığın yerden crash verebilir.
*/