import 'dart:io';

void main()
{
     int? number1;

     print("Enter the Number 1:");
    number1 = int.parse(stdin.readLineSync()!);
     if(number1>0)
     {
           print("Positive Number: $number1");
     }
     else
     {
          print("Negative Number:$number1");
     }
}
