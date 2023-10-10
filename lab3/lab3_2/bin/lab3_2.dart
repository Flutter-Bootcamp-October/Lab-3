import 'package:lab3_2/lab3_2.dart' as lab3_2;
import 'dart:io';

void main() {
  print("Enter your name :");
  String? name = stdin.readLineSync();

  print("Enter your age :");

  bool input = false;
  do {
    try {
      int age = int.parse(stdin.readLineSync()!);
      input = true;

      if (age < 18) {
        print("Sorry, you are under 18 years old.");
      }
    } catch (error) {
      print("Kindlay enter your age");
      print("Enter your age :");
    }
  } while (!input);
}
