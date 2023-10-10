import 'dart:io';
void main() {

print("Enter your name:");

var name=stdin.readLineSync();
var age;
bool isTrue=false;
print("Enter your age:");
while(!isTrue){
try{
age =int.parse(stdin.readLineSync()!);
isTrue=true;
}catch(er){
print("Please, Enter a age again:");
}
}

if(age < 18){
  print("Hi $name Sorry, you are under 18 years old.");
}

}