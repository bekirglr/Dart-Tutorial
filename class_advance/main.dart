void main() {
  final user1 = _User("Rico", age: null);

  // if ((user1.age ?? 0) < 18) {}
  if (user1.age is int) {
    if (user1.age! < 18) {
      print("18'den küçük!!");
    }
  }
  // "!" ile force kullanmamda sakınca yok
  //çünkü birinci if içerisinde age'in null olmadığını
  // int mi? sorusu ile sağlamış oldum. Eğer int ise ... yani null değil ise ...
}

class _User {
  final String name;
  int? age;

  _User(this.name, {this.age});
}
