import 'dart:io';
import 'dart:math';

void calculateTheVolumeOfTheCubeFrom1To4v2(int number) {
  for (int i = 1; i <= 4; i++) {
    double result = pow(number.toDouble(), i.toDouble()).toDouble();
    print("Number is: $number and cube of $i is: $result");
  }
}

int ReadNumber(String message) {
  int number = 0;
  bool isValidInput = false;

  stdout.write(message);
  while (!isValidInput) {
    try {
      String input = (stdin.readLineSync() ?? "").trim();
      number = int.parse(input);

      isValidInput = true;
    } catch (e) {
      print("Invalid input. Please enter a valid number.");
    }
  }

  return number;
}

bool IsAdult(int age) {
  if (age >= 18) {
    return true;
  } else {
    return false;
  }
}

String ReadText(String message) {
  stdout.write(message);

  String text = (stdin.readLineSync() ?? "").trim();

  return text;
}
