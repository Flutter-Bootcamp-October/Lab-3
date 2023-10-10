import 'dart:io'; 

void main() {
   print("Enter your name:");
    var name=stdin.readLineSync();
   print("Enter your Age:");
    var age;
    age= int.parse(stdin.readLineSync()!);

    if (age<18){
      print("Sorry you are under 18 years old");
    }
    else if(age!=18){
      print("Enter your Age:");
    }
   



}