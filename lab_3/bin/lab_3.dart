/*
    AUTHOR: Raffal Abu Eshey
    FILE: lab_3.dart
    ASSIGNMENT: Lab-3
    PURPOSE: This file contains two dart programs that deals with user input.
*/

import 'package:lab_3/lab_3.dart' as lab_3;
import 'dart:io';
import 'dart:math';

/*
  This function takes a number from the user and prints out the cube of 1 to the
  given number.
 */
void cubes() {
  bool gotNumber = false;
  do {
    try {
      print('Enter a number:');
      num number = num.parse(stdin.readLineSync()!);
      if (number > 0) {
        num cube;
        for (num i = 1; i < number + 1; i++) {
          cube = pow(i, 3);
          print('Number is: $i and cube of $i is: $cube');
        }
        gotNumber = true;
      } else {
        print('Number need to be greater than 0');
      }
    } catch (error) {
      print('Please enter digits only');
    }
  } while (!gotNumber);
}

/*
  This function takes name and age of the user and checks if the user is under 18.
 */
void names() {
  var name;
  bool ageIsvalid = false;
  bool nameIsvalid = false;
  print('Enter your name:');
  name = stdin.readLineSync();
  do {
    try {
      print('Enter your name:');
      name = stdin.readLineSync();
      nameIsvalid = true;
    } catch (error) {
      print('Please enter valid name');
    }
  } while (!nameIsvalid);
  do {
    try {
      print('Enter your age:');
      num age = num.parse(stdin.readLineSync()!);
      if (age < 1) {
        print('Please enter valid age');
      } else {
        if (age < 18) {
          print('Sorry, you are under 18 years old.');
        }
        ageIsvalid = true;
      }
    } catch (error) {
      print('Please enter valid age');
    }
  } while (!ageIsvalid);
}

void main(List<String> arguments) {
  cubes();
  // names();
}
