import 'dart:io';
void main()
{ 
     int? num1;
     int? num2;
     int? num3;
    print("Enter the Number 1:");
    num1 = int.parse(stdin.readLineSync()!);
    print("Enter the Number 2:");
    num2 = int.parse(stdin.readLineSync()!);
    print("Enter the Number 3:");
    num3 = int.parse(stdin.readLineSync()!);

    int largestNumber = (num1 > num2) ? ((num1 > num3) ? num1 : num3) : ((num2 > num3) ? num2 : num3);
    print('The largest number among $num1, $num2, and $num3 is: $largestNumber');
}