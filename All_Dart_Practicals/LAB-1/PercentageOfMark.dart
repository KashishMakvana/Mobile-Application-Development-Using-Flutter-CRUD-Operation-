import 'dart:io';

void main()
{
     int? mark1;
     int? mark2;
     int? mark3;
     int? mark4;
     int? mark5;
     int? sum;
     double? percentage;
     print("Enter the value of mark1:");
     mark1 = int.parse(stdin.readLineSync()!);
     print("Enter the value of mark2 :");
     mark2 = int.parse(stdin.readLineSync()!);
     print("Enter the value od mark3:");
     mark3 = int.parse(stdin.readLineSync()!);
     print("Enter the value od mark4:");
     mark4 = int.parse(stdin.readLineSync()!);
     print("Enter the value od mark5:");
     mark5 = int.parse(stdin.readLineSync()!);
     sum=mark1+mark2+mark3+mark4+mark5;
     print('Total of 5 subject marks  is: $sum');

     percentage = sum/5;
    print('Percentage of all 5 subjects is:$percentage');
}