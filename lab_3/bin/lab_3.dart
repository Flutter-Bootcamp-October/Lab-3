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
  This function takes a number from the user and prints out the cube from 1 to the
  given number.
 */
void cubes() {
  bool gotNumber = false;
  do {
    try {
      print('----------------');
      print('Enter a number:');
      print('----------------');
      num number = num.parse(stdin.readLineSync()!);
      if (number > 0) {
        num cube;
        for (num i = 1; i < number + 1; i++) {
          cube = pow(i, 3);
          print('Number is: $i and cube of $i is: $cube');
        }
        gotNumber = true;
      } else {
        // if number is less than zero
        print('======================================');
        print('|| Number need to be greater than 0 ||');
        print('======================================');
        print("");
      }
    } catch (error) {
      // if input is null or not a number
      print('=================================');
      print('|| Input not vaild, try again! ||');
      print('=================================');
      print("");
    }
  } while (!gotNumber);
}

/*
  This function takes name and age and checks if the age is under 18.
 */
void names() {
  bool ageIsvalid = false;
  bool nameIsvalid = false;
  var name;
  while (!nameIsvalid) {
    print('----------------');
    print('Enter your name:');
    print('----------------');
    name = stdin.readLineSync();
    if (name.isNotEmpty) {
      nameIsvalid = true;
    }
  }
  do {
    try {
      print('----------------');
      print('Enter your age:');
      print('----------------');
      num age = num.parse(stdin.readLineSync()!);
      if (age < 1) {
        // age less than zero condition
        print('============================');
        print('|| Please enter valid age ||');
        print('============================');
      } else {
        if (age < 18) {
          print('Sorry, you are under 18 years old.');
        }
        ageIsvalid = true;
      }
    } catch (error) {
      print('============================');
      print('|| Please enter valid age ||');
      print('============================');
    }
  } while (!ageIsvalid);
}

void main(List<String> arguments) {
  cubes();
  names();
}
