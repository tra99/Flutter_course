import 'dart:io';

void main(List<String> args) {

  // for loop
  for(int i=1;i<=10;i++){
    stdout.write("\$$i ");
  }
  print("\n");
  // while loop
  int i=1;
  while(i<=10){
    stdout.write("$i ");
    i++;
  }
print("\n");
  // do while loop
  i=10;
  do{
    print(i);
    i=i+10;
  }while(i<=200);
print("\n");


  // for each
  List friends=["Chhit", "Ousa", "Meng", "Chetra","Dara"];

  for(var i in friends){
    print("Name: $i");
  }
  
}