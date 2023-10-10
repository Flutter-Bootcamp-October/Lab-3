//import 'package:firstappfatimah/firstappfatimah.dart' as firstappfatimah;
import 'dart:io'; 

void main() {
 // print('Hello world: ${firstappfatimah.calculate()}!');
 print("Enter a number:");

 var UserNumber;
 UserNumber= int.parse(stdin.readLineSync()!);

 for(int i=1; i<=UserNumber; i++)
 {
  var result;
  result= i*i*i;
  print("Number is $i and cube of $i is $result");
  

 }

 





}
