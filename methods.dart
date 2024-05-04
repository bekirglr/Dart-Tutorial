void main() {
  checkUserMoney(0, 50);
  checkUserMoney(20, 50);
  checkUserMoney(200, 50);
  print('*********************');
  checkPrimeNumber(5);
  checkPrimeNumber(9);
  print('*********************');
  final int result = convertToDolar(100, 33);
  print('total dolar: ${result}');
  final int resultEuro = convertToEuro(turkisLiras: 100, euro: 14);
  print('total euro: ${resultEuro}');
  print('*********************');
  final String resultMessage = sayHello("Rico");
  print(resultMessage);
}

//Check user money funciton
void checkUserMoney(int money, int minimumValue) {
  if (money > minimumValue) {
    print('Paran Var');
  } else {
    print('Paran Yok');
  }
}

//Check prime-number funciton
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

//Convert turkish liras to dolar funciton
int convertToDolar(int tliras, int dolar) {
  return tliras ~/ dolar;
}

int convertToEuro({required turkisLiras, int euro = 14}) {
  return turkisLiras ~/ euro;
}

//Say hello funciton
String sayHello(String name) {
  return 'Hello $name!';
}
