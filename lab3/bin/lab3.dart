import 'dart:io';
import 'dart:math';

void main() {
//Question 1:
  print("Enter a number:");
  int number;
  try {
    number = int.parse(stdin.readLineSync()!);
    int i = 1;
    while (i <= number) {
      var cubeNumber = pow(i,3); //pow()funcation returns a value to the power of a specified exponent.
      print("Number is: $i and cube of $i is:$cubeNumber");
      i++;
    }
  } catch (ex) {
    print("Please enter only number");
  }
//Question 2:
  try {
    print("Enter your name:");
    String? name = stdin.readLineSync();
    print("Enter your age:");
    int age = int.parse(stdin.readLineSync()!);
    if (age < 18) {
      print("Sorry, you are under 18 years old!");
    } 
  } catch (error) {
    print("Please enter only numbers!");
  }
}
