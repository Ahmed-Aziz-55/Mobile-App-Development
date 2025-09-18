import 'dart:io';

void main() {
  print('Enter your name:');
  String? name = stdin.readLineSync();

  print('Enter your age:');
  int age = int.parse(stdin.readLineSync()!);

  if (age < 0) {
    print('Age cannot be negative');
  } else if (age < 18) {
    print('Sorry $name, you are not eligible to register');
  } else {
    print('Welcome $name');
  }
}
