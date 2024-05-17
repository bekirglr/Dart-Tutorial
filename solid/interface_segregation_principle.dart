abstract class IUserOperation {
  void write();
  void read();
  void delete();
}

abstract class IUserLocation {
  void locationChange();
}

abstract class ILanguage {
  void langugae();
}

class UserLocation extends IUserLocation {
  @override
  void locationChange() {
    // TODO: implement locationChange
  }
}

/*
İstemciler, ihtiyaç duymadıkları metodlara bağlı olmamalıdır. 
Yani, bir arayüz, ihtiyaç duyulan işlevsellikle sınırlı olmalıdır. 
Bu prensip, sınıfların gereksiz bağımlılıklardan kaçınmasını sağlar ve kodun daha modüler olmasını sağlar.
*/