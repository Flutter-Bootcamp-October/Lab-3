
import 'dart:io';

void main(List<String> arguments) {


bool AgeValue = false;
int age;


  print("please Enter your Name: ");
  var name = stdin.readLineSync()!;
  print("please Enter your Age: ");
  

  while (!AgeValue) {
    try {
      age = int.parse(stdin.readLineSync()!);
      AgeValue= true;

      if (age<18) {
        print("Sorry, you are under 18 years old."); 
      }else{
        print("welcome $name!");
      }
  } catch (error) {
      print("please enter your age:");
}
  }

}
