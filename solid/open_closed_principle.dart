class Product {
  final String name;
  final String money;

  Product(this.name, this.money);
}

class ProductCategories extends Product {
  ProductCategories(String name, String money) : super(name, money);

  final String category = ";l";
}

/* 
Yazılım varlıkları (sınıflar, modüller, fonksiyonlar vb.), genişletmeye açık ancak değişime kapalı olmalıdır. 
Yani mevcut kod değişmeden yeni davranışlar eklenmeli veya mevcut davranışlar değiştirilmelidir. 
Bu prensip, kodun esnekliğini ve uzun vadeli bakımını kolaylaştırır.
:readme.md
*/