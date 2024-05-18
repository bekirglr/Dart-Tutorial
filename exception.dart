void main(List<String> args) {
  String userName = "a";

  if (userName.length > 2) {
    print('a');
  } else {
    throw UserNameException();
  }
}

class UserNameException implements Exception {
  @override
  String toString() {
    return 'Username Null Olamaz!';
  }
}
