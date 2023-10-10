import 'dart:io';

import 'package:dart_application_3/dart_application_3.dart' as dart_application_3;

void main() {
  print('Enter a number:');

  try{
    int? number = int.parse(stdin.readLineSync()!);
    
    int i=1;
while(i<= number){
  int cube= i*i*i;
  print("Number is : $i and cube of $i the cube is : $cube ");
  i++;
}

  }catch(e){
  print("Please inter number");



}
}

