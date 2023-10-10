import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {

int number=0;
bool isTrue= false;
var cube;

 print("Enter number:");
while(!isTrue){
try{
 number = int.parse(stdin.readLineSync()!);
 isTrue=true;
}catch(error){
  print("please enter a number: ");
}
}

for (var i = 1; i <= number; i++) {
  cube = pow(i, 3);
  print("Number is: $i and cube of $i is: $cube " );
}

int age=0;
String name;
bool isAgeTrue=false;

print("Enter your name: ");
name = stdin.readLineSync()!;
print("Enter your age: ");

while(!isAgeTrue){
try{
 age = int.parse(stdin.readLineSync()!);
 isAgeTrue=true;
}catch(error){
  print("please enter you age: ");
}
}

if (age<18) {
  print("Sorry, you are under 18 years old.");
}else if(age>=18){
  print("thank you");
}

}
