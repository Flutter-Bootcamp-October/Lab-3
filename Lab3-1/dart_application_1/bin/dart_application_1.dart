
import 'dart:io';
import 'dart:math';


void main(List<String> arguments) {
//Lab-3-1 build 

bool isNum = false;

print('Please Enter a number');
do {
  try {
    int number = int.parse(stdin.readLineSync()!);
    isNum = true;

    for (var i = 1; i <= number; i++) {
      var result = pow(i,3) ;
      print("Number is: $i and cubs of $i is: $result");
}
    } catch (error) {
    print("please enter only a number");
  }
  
} while (!isNum);

}




