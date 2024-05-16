// ignore_for_file: public_member_api_docs, sort_constructors_first
void main() {}

//Bir sınıfın yalnızca bir nedeni olmalıdır

//Bu sınıf kullanıcı yönetim sınıfıdır. Başka bir işlem oluşturmak bu prensibe uymaz
class UserManager {
  String name;

  UserManager({required this.name});

  void updateUserName(String name) {
    this.name = name;
  }
}

//Bu sınıf user'ın local ve name'ini update ediyor.
class UserLocalization {
  final UserManager manager;

  UserLocalization(this.manager);

  void updateNameAndLoclaziaitopn() {
    manager.updateUserName('a');
    changeLocalizaiton();
  }

  void changeLocalizaiton() {
    print('object');
  }
}


/*
Alt sınıflar, üst sınıfların yerine kullanılabilir olmalıdır. 
Yani, bir üst sınıfa ait nesneler, alt sınıfların nesneleri tarafından sorunsuzca değiştirilebilir olmalıdır. 
Bu, türetilmiş sınıfların temel sınıfın davranışını değiştirmeden genişletilebilmesini sağlar.
*/