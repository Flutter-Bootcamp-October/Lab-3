import 'dart:io';

void main(List<String> arguments) {
  //second task
  print("Enter your name:");
  var name = stdin.readLineSync();
  print("Enter your age:");
  int age;
  bool istrue = false;
  
  do {
    try {
      age = int.parse(stdin.readLineSync()!);
      istrue = true;
      if (age < 18) {
        print("Sorry, you are under 18 years old");
      }
    } catch (error) {
      print("retry to inter your age");
    }
  } while (!istrue);
  print("Enter a number:");
//First task
  var number;
  do {
    try {
      number = int.parse(stdin.readLineSync()!);
      for (var i = 0; i < number; i++) {
        var mul = number * number * number;
        print("Number is: $i and cube of $number is: $mul");
      }
      istrue = true;
    } catch (error) {
      print("Try agin");
    }
  } while (!istrue);
}
