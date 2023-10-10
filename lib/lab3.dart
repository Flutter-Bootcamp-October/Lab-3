import 'dart:ffi';
import 'dart:io';
import 'dart:math';

void calculateTheVolumeOfTheCubeFrom1To4v2(int number) {
  for (int i = 1; i <= 4; i++) {
    double result = pow(number.toDouble(), i.toDouble()).toDouble();
    print("Number is: $number and cube of $i is: $result");
  }

  int ReadNumber() {
    int? number;
    while (true) {
      try {
        print("Please enter a number: ");
        String? input = stdin.readLineSync();
        if (input == null) {
          print("Invalid input. Please enter a valid number.");
          continue; // Skip the rest of the loop and ask for input again
        }
        number = int.tryParse(input);
        if (number != null) {
          break; // Exit the loop if parsing is successful
        } else {
          print("Invalid input. Please enter a valid number.");
        }
      } catch (e) {
        print("Invalid input. Please enter a valid number.");
      }
    }
    return number!;
  }
}
