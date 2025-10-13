import 'dart:io';

void main(List<String> args) {
  int? age;
  String? name;
  double? height;

  stdout.write("Enter your age: ");
  age =int.parse(stdin.readLineSync()!);
  stdout.write("Enter your name: ");
  name =stdin.readLineSync()!;
  stdout.write("Enter your height: ");
  height=double.parse(stdin.readLineSync()!);

  print("Your age is $age");
  print("Your name is $name");
  print("Your height is $height");

}