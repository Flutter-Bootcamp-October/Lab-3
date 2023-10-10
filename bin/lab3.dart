import 'package:lab3/lab3.dart' as lab3;

void main(List<String> arguments) {
  print("Enter a number:");
  int userInput = 0;

  try {
    int userInput = int.parse(stdin.readLineSync()!);
    calculateTheVolumeOfTheCubeFrom1To4v2(userInput);
  } catch (e) {
    print("Invalid input. Please enter a valid integer.");
  }
}
