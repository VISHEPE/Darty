//desicion
void main(){
  int age = 17;
  if(age == 17){
    print("your age is $age so you are underage");
      }else{
        print("you are welcomed");
      }
  // switch case
  int day =3;
  switch (day) {
    case 1:
      print("🌞 Monday: Let's code together!");
      break;
    case 2:
      print("🚀 Tuesday: Keep coding!");
      break;
    case 3:
      print("🐪 Wednesday: Halfway through!");
      break;
    default:
      print("🎉 Time for the weekend!");
  } 
  // looping
  for(int i= 100;i>500000;i++){
    print("looping $i");

  } 
  //  for...in loop
   var lister = [1,2,4,9,5];
   for(var i in lister){
    print('$i');
   }
}