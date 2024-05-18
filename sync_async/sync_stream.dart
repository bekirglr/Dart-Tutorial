Future<void> main(List<String> args) async {
  print('a');
  // 5sn bekle sonra gel hicbir musteri alma
  Stream<int> bankMoneys = Stream.empty();
  bankMoneys = dataAddBankMoney(55, 3);
  // bankMoneys.listen((event) {
  //   print(event);
  // });
  print(await bankMoneys.where((event) => event == 258).toList());
}

Stream<int> dataAddBankMoney(int retryCount, int money) async* {
  int _localRetry = 0;
  await Future.delayed(Duration(seconds: 1));
  while (_localRetry < retryCount) {
    _localRetry++;
    yield money += 5;
    yield 5;
  }
}
