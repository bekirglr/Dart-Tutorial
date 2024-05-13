# Dart'ta Veri Yapıları ve Dil Özellikleri

1. **Map**: Map, anahtar-değer çiftlerini depolayan bir veri yapısıdır. Bu, bir anahtara bağlı olarak bir değer saklamak için kullanışlıdır. Anahtarlar ve değerler herhangi bir veri türü olabilir. Örneğin:

    ```dart
    Map<String, int> yaslar = {
      'Rico': 22,
      'Jennie': 25,
      'Cedric': 8,
    };
    ```

    Bu, bir kişinin adını anahtar olarak alır ve yaşını değer olarak döndürür. Map'ler genellikle verileri kategorize etmek ve erişmek için kullanılır.

2. **Enums (Sıralı Değerler)**: Dart'ta enum, belirli sabit değerleri temsil eden bir veri türüdür. Özellikle sınırlı bir değer setine sahip olduğunuzda kullanışlıdır. Örneğin, bir günü temsil eden bir enum:

    ```dart
    enum Gun { Pazartesi, Salı, Çarşamba, Perşembe, Cuma, Cumartesi, Pazar }
    ```

    Bu, günleri temsil eden sabit değerleri içerir. Bu, belirli değerler arasında geçiş yapmayı veya bir değerin belirli bir kümede olup olmadığını kontrol etmeyi kolaylaştırır.

3. **Mixin**: Mixin, bir sınıfa başka bir sınıfın özelliklerini veya davranışlarını eklemek için kullanılan bir dil özelliğidir. Mixin, kalıtımı kullanmadan bir sınıfa özellikler eklemek için kullanılır. Mixin'ler, kodu yeniden kullanmanın yanı sıra, sınıflar arasında kod paylaşımını artırır. Örneğin:

    ```dart
    mixin Logger {
      void log(String msg) {
        print('Log: $msg');
      }
    }

    class Test with Logger {
      void testFunction() {
        log('Test function called');
      }
    }
    ```

    Bu, `Logger` mixin'ini `Test` sınıfına dahil eder. Bu sayede `Test` sınıfı `log` fonksiyonunu kullanabilir.

## Özetle
   Her birinin kendine özgü avantajları vardır:

- Map: Anahtar-değer çiftlerini depolamak ve hızlı bir şekilde erişmek için kullanılır. Özellikle ilişkisel verileri saklamak için uygundur.
- Enums: Belirli ve sınırlı bir değer setini temsil etmek için idealdir. Bu, kodunuzun okunabilirliğini artırabilir ve hataları azaltabilir.
- Mixin: Kodu tekrar kullanmanın yanı sıra, sınıflar arasında kod paylaşımını artırır. Kalıtımın sağladığı sıkı bağımlılıklardan kaçınmak için idealdir.

# Singleton nedir? Ne için kullanılır?
Singleton deseni, bir sınıfın yalnızca bir örneğine sahip olmasını sağlayan bir tasarım desenidir. Bu desen, bir sınıfın birden fazla örneğini engellemek ve uygulama boyunca tek bir noktadan erişilebilir bir nesne sağlamak için kullanılır.

Bir sınıfın yalnızca bir örneğine sahip olması gerektiği durumlar vardır. Örneğin:

- Bir veritabanı bağlantısı kurulurken
- Bir uygulama ayarları yüklenirken
- Bir kaynak havuzu yönetilirken

Singleton deseni, bu tür durumlarda birden fazla örneğin oluşturulmasını önler ve tek bir noktadan bu örneğe erişimi sağlar.

Avantajları şunlardır:

1. **Tekil nesne**: Singleton deseni, bir sınıfın yalnızca bir örneğine sahip olduğundan emin olur, böylece istemciler yanlışlıkla birden fazla örnek oluşturamazlar.
   
2. **Küresel erişim**: Singleton deseni, uygulama boyunca tek bir noktadan erişilebilir bir nesne sağlar. Bu, nesneye kolayca erişim sağlamak için genellikle "getInstance" gibi bir yöntem kullanır.

3. **Bellek kullanımı**: Singleton deseni, sınıfın yalnızca bir örneğine sahip olduğundan, bellek kullanımını optimize eder. Birden fazla örnek oluşturmanın getirdiği gereksiz bellek tüketimini önler.

Özetlemek gerekirse, Singleton deseni, yalnızca bir örneğe sahip olmanın gerektiği durumlarda kullanılır ve bu örneğe uygulama boyunca tek bir noktadan erişim sağlar, böylece kodunuzun düzenli ve bellek kullanımının etkin olmasını sağlar.


# SOLID Prensibi
SOLID, yazılım tasarımı için beş temel prensibi ifade eden bir kısaltmadır. Her bir harf, bir prensibi temsil eder:

1. **S - Tek Sorumluluk Prensibi (Single Responsibility Principle)**: Bir sınıfın yalnızca bir nedeni olmalıdır ve bir sınıfın değişmesi gereken yalnızca bir nedeni olmalıdır. Bu prensip, bir sınıfın sadece belirli bir görevi yerine getirmesi gerektiğini belirtir. Böylece, sınıfların daha kolay anlaşılabilir, bakımı daha kolay ve değişikliklere daha açık olması sağlanır.

2. **O - Açık/Kapalı Prensibi (Open/Closed Principle)**: Yazılım varlıkları (sınıflar, modüller, fonksiyonlar vb.), genişletmeye açık ancak değişime kapalı olmalıdır. Yani mevcut kod değişmeden yeni davranışlar eklenmeli veya mevcut davranışlar değiştirilmelidir. Bu prensip, kodun esnekliğini ve uzun vadeli bakımını kolaylaştırır.

3. **L - Liskov İlkesi (Liskov Substitution Principle)**: Alt sınıflar, üst sınıfların yerine kullanılabilir olmalıdır. Yani, bir üst sınıfa ait nesneler, alt sınıfların nesneleri tarafından sorunsuzca değiştirilebilir olmalıdır. Bu, türetilmiş sınıfların temel sınıfın davranışını değiştirmeden genişletilebilmesini sağlar.

4. **I - Arayüz Ayrımı Prensibi (Interface Segregation Principle)**: İstemciler, ihtiyaç duymadıkları metodlara bağlı olmamalıdır. Yani, bir arayüz, ihtiyaç duyulan işlevsellikle sınırlı olmalıdır. Bu prensip, sınıfların gereksiz bağımlılıklardan kaçınmasını sağlar ve kodun daha modüler olmasını sağlar.

5. **D - Bağımlılıkların Ters Çevrilmesi Prensibi (Dependency Inversion Principle)**: Yüksek seviyeli modüller, düşük seviyeli modüllere bağlı olmamalıdır. Bunun yerine, her ikisi de soyutlamalara bağlı olmalıdır. Bu prensip, soyutlamaların kullanılmasını ve sınıflar arası sıkı bağlantıların azaltılmasını sağlar, böylece kodun daha esnek ve bakımı daha kolay olmasını sağlar.

SOLID prensiplerinin kolaylıkları şunlardır:

- Kodun daha okunabilir ve anlaşılabilir olmasını sağlar.
- Kodun daha esnek ve değişime açık olmasını sağlar.
- Kodun daha az bağımlılığa sahip olmasını sağlar, böylece yeniden kullanılabilirlik ve test edilebilirlik artar.
- Uzun vadeli bakım ve genişletme kolaylığı sağlar.

Bu prensipler, yazılım geliştirme sürecinde daha kaliteli, sürdürülebilir ve ölçeklenebilir kod üretmeye yardımcı olur.


# EK
Bu repo'mda [Veli Bacik'in](https://github.com/VB10) verdiği dart eğitim videosunu tamamlayarak notlarımı paylaştım.

Eğitim videosu: [Youtube link](https://www.youtube.com/watch?v=H6NJHb5BJyE&ab_channel=HardwareAndro)
