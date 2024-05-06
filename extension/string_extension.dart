void main() {
  if ('Rico'.isAdmin()) {
    print('object');
  }

  String? name;

  name.isAdmin();
}

extension StringUserCheckExtension on String? {
  bool isAdmin() {
    return {this ?? ''} == 'admin';
  }
}
