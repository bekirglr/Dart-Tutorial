<details>
    <summary>
        English 🇬🇧
    </summary>

# Contents
1. [Data Structures and Language Features in Dart](#data-structures-and-language-features-in-dart)
4. [What is a Singleton? What is it used for?](#what-is-a-singleton-what-is-it-used-for)
5. [SOLID Principle](#solid-principle)
6. [APPENDIX](#appendix)

# Data Structures and Language Features in Dart

1. **Map**: A Map is a data structure that stores key-value pairs. It is useful for storing a value associated with a key. Keys and values can be of any data type. For example:

    ```dart
    Map<String, int> ages = {
      'Rico': 22,
      'Jennie': 25,
      'Cedric': 8,
    };
    ```

    This takes a person's name as the key and returns their age as the value. Maps are often used for categorizing and accessing data efficiently.

2. **Enums**: In Dart, an enum is a data type that represents a fixed set of constant values. It is especially useful when you have a limited set of values. For example, an enum representing a day:

    ```dart
    enum Day { Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday }
    ```

    This includes constant values representing the days. It makes it easy to switch between specific values or check if a value is part of a predefined set.

3. **Mixin**: A mixin is a language feature used to add properties or behaviors of another class to a class. It is used to add features to a class without using inheritance. Mixins enhance code reuse and increase code sharing among classes. For example:

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

    This includes the `Logger` mixin in the `Test` class. Thus, the `Test` class can use the `log` function.

## In Summary
   Each has its unique advantages:

- Map: Used to store and access key-value pairs quickly. It is particularly suitable for storing relational data.
- Enums: Ideal for representing a fixed and limited set of values. This can improve code readability and reduce errors.
- Mixin: Increases code sharing among classes without the tight coupling that inheritance brings, making it ideal for adding reusable code.

# What is a Singleton? What is it used for?
The Singleton pattern is a design pattern that ensures a class has only one instance and provides a global point of access to it. This pattern is used to prevent multiple instances of a class and to provide a single point of access to the object throughout the application.

There are situations where only one instance of a class is needed, such as:

- Establishing a database connection
- Loading application settings
- Managing a resource pool

The Singleton pattern prevents the creation of multiple instances and provides access to this single instance from a single point.

Its advantages include:

1. **Single instance**: Ensures that a class has only one instance, so clients do not accidentally create multiple instances.
   
2. **Global access**: Provides a single point of access to the object throughout the application, usually through a method like "getInstance".

3. **Memory usage**: Optimizes memory usage by ensuring only one instance of the class exists, preventing unnecessary memory consumption from creating multiple instances.

In summary, the Singleton pattern is used when only one instance is needed and provides a single point of access throughout the application, ensuring your code is organized and memory usage is efficient.

# SOLID Principle
SOLID is an acronym representing five principles of software design. Each letter stands for a principle:

1. **S - Single Responsibility Principle**: A class should have only one reason to change, meaning it should have only one job or responsibility. This makes classes easier to understand, maintain, and modify.

2. **O - Open/Closed Principle**: Software entities (classes, modules, functions, etc.) should be open for extension but closed for modification. This means new behavior can be added without modifying existing code, making the codebase more flexible and maintainable.

3. **L - Liskov Substitution Principle**: Subtypes must be substitutable for their base types. That is, objects of a superclass should be replaceable with objects of a subclass without affecting the correctness of the program. This ensures that derived classes extend the base class without changing its behavior.

4. **I - Interface Segregation Principle**: Clients should not be forced to depend on interfaces they do not use. An interface should only have methods that are necessary for the clients. This keeps classes focused and reduces dependencies, making the code more modular.

5. **D - Dependency Inversion Principle**: High-level modules should not depend on low-level modules. Both should depend on abstractions. This principle reduces the coupling between classes and makes the code more flexible and easier to maintain.

The benefits of SOLID principles are:

- They make the code more readable and understandable.
- They make the code more flexible and open to changes.
- They reduce dependencies, increasing reusability and testability.
- They facilitate long-term maintenance and extension of the codebase.

These principles help produce higher quality, sustainable, and scalable code during the software development process.

# APPENDIX
In this repo, I shared my notes after completing the Dart training video provided by [Veli Bacik](https://github.com/VB10).

Training video: [Youtube link](https://www.youtube.com/watch?v=H6NJHb5BJyE&ab_channel=HardwareAndro)

</details>

<details open>
    <summary>
        Turkish 🇹🇷
    </summary>

# İçindekiler
1. [Dart'ta Veri Yapıları ve Dil Özellikleri](#dartta-veri-yapıları-ve-dil-özellikleri)
4. [Singleton nedir? Ne için kullanılır?](#singleton-nedir-ne-için-kullanılır)
5. [SOLID Prensibi](#solid-prensibi)
6. [EK](#ek)

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
</details>
