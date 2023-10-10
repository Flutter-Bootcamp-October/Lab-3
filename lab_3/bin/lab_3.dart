import 'package:lab_3/lab_3.dart' as lab_3;
import 'dart:io';
import 'dart:math';

void cubes(){
  bool gotNumber = false;
  do{
    try{
      print('Enter a number:');
      num number = num.parse(stdin.readLineSync()!);
      print(number);
      num cube;
      for(num i = 1 ; i < number+1; i++){
        cube = pow(i, 3);
        print('Number is: $i and cube of $i is: $cube');
      }
      gotNumber = true;
    } catch(error){
      print('Please enter digits only');
    }
  } while(!gotNumber);
}

void names(){
  var name;
  bool ageIsvalid = false;
  bool nameIsvalid = false;
  print('Enter your name:');
  name = stdin.readLineSync();
  do{
    try{
      print('Enter your name:');
      name = stdin.readLineSync();
      nameIsvalid = true;
    } catch (error){
      print('Please enter valid name');
    }
  } while(!nameIsvalid);
  do{
    try{
      print('Enter your age:');
      num age = num.parse(stdin.readLineSync()!);
      if (age < 1){
        print('Please enter valid age');
      } else{
        if (age < 18){
          print('Sorry, you are under 18 years old.');
        }
        ageIsvalid = true;
      }
    } catch (error){
      print('Please enter valid age');
    }
  } while(!ageIsvalid);
}
void main(List<String> arguments) {
  cubes();
  names();
}
