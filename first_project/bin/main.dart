import 'dart:io';

void main() {
  // ---------------------Ex 1----------------------
  // print('Enter a number:');
  // bool checkVal = false;
  // num numb;
  // do {
  //   try {
  //     numb = num.parse(stdin.readLineSync()!);
  //     for (int i = 1; i <= numb; i++) {
  //       print('The cup of $i is ${i * i * i}');
  //       checkVal = true;
  //     }
  //   } catch (err) {
  //     print('Wrong Entrym try again!');
  //   }
  // } while (!checkVal);
  // // ------------------Ex 2---------------------------
  print('Enter ur name:');
  var name = stdin.readLineSync();
  print('Enter ur age:');
  int age;
  bool check = false;
  do {
    try {
      age = int.parse(stdin.readLineSync()!);
      if (age >= 18) {
        print('Welcome $name, and ur age is older than 18.');
        check = true;
      } else {
        print('U\'r less than 18.');
      }
    } catch (err) {
      print('Wrong entry, try again!');
    }
  } while (!check);
}
