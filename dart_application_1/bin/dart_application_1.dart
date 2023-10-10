import 'dart:io';


import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;
void main() {
  int? number;
  
print("Enter Your name:");
String name = stdin.readLineSync()!;
print (" Hi $name! nice to seeing you"); 
print("Enter Your age:");
bool yourage = false;
do{
  try{
    int age = int.parse(stdin.readLineSync()!);
    yourage= true;
    if(age < 18){
  print("sorry you're age under 18");
 }
    
 } catch(error) {
  print("this is not age, Enter your age:");

 }

}while(!yourage);
print("Enter a number:");
bool thenumber = false;
do{
  try{
    number = int.parse(stdin.readLineSync()!);
    thenumber= true;
  }catch(error){
    print("please Enter A number!!!!");
  }
} while(!thenumber);
 for (int i = 1; i<=number!;i++){
  num cube = i*i*i;
  print("Number is :$i cube is $cube");
 }
} 