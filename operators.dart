void main() {
  const String customer1 = 'Rico';
  const String customer2 = 'Jennie';

  print(customer1 + " " + customer2);

  if (customer1.length == customer2.length) {}
  if (customer1.length != customer2.length) {}
  if (customer1.length > customer2.length) {}
  if (customer1.length >= customer2.length) {}
  if (customer1.length < customer2.length) {}
  if (customer1.length <= customer2.length) {}
  if (customer1.length == customer2.length) {}

  int myMoney = 100;
  const double productPrice = 99.9;
  const double discount = 2.5;

/*
  myMoney = myMoney + 1;
  myMoney += myMoney;
  myMoney++;
  myMoney--;
*/

  print("My money: " + '$myMoney');

  myMoney = myMoney - (productPrice ~/ discount);
  //Bir düşük tam sayıya yuvarlar " ~ "

  print("My money: " + '$myMoney');

  print(myMoney % 2 == 0); //Tek mi? Çift mi? bool değer döndürür
  print(myMoney.isEven); // Çift mi?
  print(myMoney.isOdd); //Tek mi?
}
