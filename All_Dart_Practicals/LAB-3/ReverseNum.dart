import 'dart:io';
void main()
{ 
     int num;
     int reversed = 0;
    print("Enter the Number:");
    num = int.parse(stdin.readLineSync()!);
      while (num != 0) {
        int digit = num % 10;
        reversed = reversed * 10 + digit;
        num = (num ~/ 10).toInt();
      }
       print("reversed num is $reversed");

}