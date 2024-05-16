void main() {
  //SQL veritabanı kullanılıyor
  IDatabase db = SQL();

//Artık Mongo db kullanılıyor
  db = Mongo();
  db.write();
}

abstract class IDatabase {
  void write() {}
}

class SQL extends IDatabase {
  @override
  void write() {}
}

class Mongo extends IDatabase {
  @override
  void write() {}
}
