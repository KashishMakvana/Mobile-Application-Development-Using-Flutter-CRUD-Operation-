import 'dart:io';

void main()
{
     int? n1;
     int? n2;
     int? sum;
     print("Enter the value od n1:");
     n1 = int.parse(stdin.readLineSync()!);
     print("Enter the value od n2:");
     n2 = int.parse(stdin.readLineSync()!);
     sum=n1+n2;
     print('Addtion of $n1 and $n2  is: $sum');
}
    