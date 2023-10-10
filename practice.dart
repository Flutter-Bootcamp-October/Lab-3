import 'dart:io';

void main() {
  num? age;
  num? number;
  //  Write a Dart program that takes `name` and `age` as input from a user, and if `age` is less than 18, print a message.
  print("inter your name: ");
  String? name = stdin.readLineSync();
  print("enter your age: ");
  bool HasAge = false;
  do {
    try {
      age = num.parse(stdin.readLineSync()!);
      HasAge = true;
    } catch (error) {
      print("this is an error please enter the correct number:");
    }
  } while (!HasAge);
  if (age! <= 18) {
    print("=================================");
    print("Hi $name : \n Sorry, you are under 18 years old");
    print("=================================");
  } else {
    print("=================================");
    print("Hi $name : \n You are adult");
    print("=================================");
  }
  // Write a Dart program that takes a `number` from a user, and prints the cube from 1 to the given `number` using a loop.
  print("enter a number please: ");
  bool Hasnumber = false;
  do {
    try {
      number = num.parse(stdin.readLineSync()!);
      Hasnumber = true;
    } catch (error) {
      print("this is an error please enter a valid number:");
    }
  } while (!Hasnumber);
  {
    for (int i = 1; i <= number!; i++) {
      num cube = i * i * i;
      print("number is :$i cube is $cube");
    }
  }
}
