import 'package:lab3/lab3.dart';

void main() {
  ReadText("Enter your name: ");

  calculateTheVolumeOfTheCubeFrom1To4v2(ReadNumber("Enter a number:"));

  if (IsAdult(ReadNumber("Enter your age: "))) {
    print("You can drive");
  } else {
    print("Sorry, you are under 18 years old.");
  }
}
