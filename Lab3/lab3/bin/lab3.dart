import 'dart:io';

void main(List<String> arguments) {
  
  //Q1:
  int number = 0;
  bool isNumber = false;
  print("Enter a number:");

  do {
    try{
      number = int.parse(stdin.readLineSync()!);
      if(number > 0) {
        isNumber = true;
      } else {
        print("Enter integer and positive number: ");
      }
    } catch(error) {
      print("Enter integer number: ");
    }
  } while (!isNumber);

  for(var i = 1; i <= number; i++){
    print("Number is: $i and cube of $i is: ${i*i*i}");
  }

  //Q2:
  var name = "";
  print("------------------------------------");
  do{
    print("Enter your name: should be more than 2 charactors");
    name = stdin.readLineSync()!;
  } while(name.length<=2);

  int age = 0;
  bool hasAge = false;
  print("Enter your age:");
  do {
    try{
      age = int.parse(stdin.readLineSync()!);
      hasAge = true;
    } catch(error) {
      print("Enter your age correctly: ");
    }
  } while (!hasAge);

  if (age > 18) {
  print("your name is $name, your age is $age");
  } else {
   print("Sorry, you are under 18 years old.");
  }
}
