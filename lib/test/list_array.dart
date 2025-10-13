import 'dart:io';

void main(List<String> args) {
  List list=[];
  List<int> listInt=[1,2,3];
  List<String> name=["Chetra", "Ousa", "Chhit"];

  for(var temp in name){
    print("Hello bro $temp");
    
  }
  print(name.length);
  print(name.reversed);
  stdout.write("Enter name: ");
  String n1 =stdin.readLineSync()!;
  name.add(n1);

  print(name);
}