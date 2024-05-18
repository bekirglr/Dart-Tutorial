Future<void> main(List<String> args) async {
  print('a');
  // 5sn bekle sonra gel hicbir musteri alma

  // await Future.forEach([1, 2, 3, 4, 5, 6], (int element) async {
  //   await Future.delayed(Duration(seconds: 2));
  //   print('islem bitti $element');
  // });
  // await Future.delayed(Duration(seconds: 2));

  print('ab');

  print('hello');
  Future.delayed(Duration(seconds: 1)).whenComplete(() {
    print('hello2');
  });
  print('hello3');
  Future.delayed(Duration(seconds: 2)).whenComplete(() {
    print('hello4');
  });
}
