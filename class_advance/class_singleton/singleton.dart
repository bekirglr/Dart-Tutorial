void main() {
  final product1 = Product();
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
}

class Product {
  int stock = 5;
  static int price = 100;
  static int money = 20;

  static void incrementMoney(int newMoney) {
    money += newMoney;
  }
}
/*
Static tanımlanmış sınıf veya instance diğer dosya ve klasörlere public hale geliyor.
Bu her ne kadar kolay ve güzel görünsede tehlikeli bir kullanımdır.
çünkü bu kullanım yüüzdne sen sonuç olarak herkesin buna erişmesine ve
herkesin dokunmasına izin vermiş oluyorsun
Bu nedenle bu değişken çok rahat manüpüle edilip hiç anlamadığın yerden crash verebilir.
*/