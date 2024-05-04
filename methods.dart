void main() {
  //Müşterinin parası var mı yok mu kontrol et.

  checkUserMoney(0, 50);
  checkUserMoney(20, 50);
  checkUserMoney(200, 50);
  print('*********************');
  checkPrimeNumber(5);
}

void checkUserMoney(int money, int minimumValue) {
  if (money > minimumValue) {
    print('Paran Var');
  } else {
    print('Paran Yok');
  }
}

//Check prime-number

void checkPrimeNumber(int number) {
  bool isPrime = true;
  for (int j = 2; j <= number / 2; j++) {
    if (number % j == 0) {
      isPrime = false;
      break;
    }
  }
  if (isPrime) {
    print('$number is a Prime Number!');
  } else {
    print('$number is Not a Prime Number!');
  }
}
