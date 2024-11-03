import "dart:io";
void main(){
  print("enter your name");
  String? name = stdin.readLineSync();

  print("welcome $name");
  print("what  do you want to shop");
  String? product =stdin.readLineSync();


  int sugar = 100;
  int flour = 120;
  if(product== 'sugar'){
    print("the price is $sugar");

  }else if(product == flour){
    print("the price is $flour");
  }else{
    print("invalid input");
  }

}