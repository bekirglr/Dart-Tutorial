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


# EK
Bu repo'mda [Veli Bacik'in](https://github.com/VB10) verdiği dart eğitim videosunu tamamlayarak notlarımı paylaştım.

Eğitim videosu: [Youtube link](https://www.youtube.com/watch?v=H6NJHb5BJyE&ab_channel=HardwareAndro)
