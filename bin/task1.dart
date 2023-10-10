import 'dart:io';
void main() {

print("Enter a number:");
num number=0;
bool isTrue=false;
while(!isTrue){
try{
number=num.parse(stdin.readLineSync()!);
isTrue=true;
}catch(er){
print("Please, Enter a number again:");
}
}

for(int i=1; i<=number; i++){
  print(" Number is: $i and cube of $i is:${i*i*i}");

}



}
