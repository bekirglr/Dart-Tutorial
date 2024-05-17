abstract class ICamereManager {
  void readQR();
}

class DeviceCamaereManager extends ICamereManager {
  final IphoneCamereRead iphoneCamereRead;

  DeviceCamaereManager(this.iphoneCamereRead);
  @override
  void readQR() {}
}

class IphoneCamereRead extends ICamereManager {
  @override
  void readQR() {
    // TODO: implement readQR
  }
}

/* 
Yüksek seviyeli modüller, düşük seviyeli modüllere bağlı olmamalıdır. 
Bunun yerine, her ikisi de soyutlamalara bağlı olmalıdır. 
Bu prensip, soyutlamaların kullanılmasını ve sınıflar arası sıkı bağlantıların azaltılmasını sağlar. 
Böylece kodun daha esnek ve bakımı daha kolay olmasını sağlar.
*/