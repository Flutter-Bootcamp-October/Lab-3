import 'dart:io';

void main() {
  bool invalid = false;
  print("enter your number");
  do {
    try {
      int number = int.parse(stdin.readLineSync()!);
      print(number);
      invalid = true;
      for (int i = 1; i <= number; i++) {
        int cuobing = i * i * i;
        print("the cube of number $i is: $cuobing");
      }
    } catch (error) {
      print("enter a valid n umber:");
    }
  } while (!invalid);

  print("enter your name: ");
  String name = stdin.readLineSync()!;
  print("your name is: $name");
  print("enter your age : ");
  do {
    try {
      int age = int.parse(stdin.readLineSync()!);
      invalid = false;

      if (age < 18) {
        print("soory you are under age _-");
      } else {
        print("you are in !");
      }
    } catch (e) {
      print("your age is a number right?");
    }
  } while (invalid);
}
