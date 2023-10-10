import 'package:lab3_1/lab3_1.dart' as lab3_1;

import 'dart:io';

void main() {
  int i = 1;
  print("Enter a number:");

  bool input = false;
  do {
    try {
      int number = int.parse(stdin.readLineSync()!);
      input = true;

      while (i <= number) {
        int cube = i * i * i;
        print("Number is: $i and cube of $i is: $cube");

        i++;
      }
    } catch (error) {
      print("Kindlay enter an inger");
      print("Enter a number again :");
    }
  } while (!input);
}
