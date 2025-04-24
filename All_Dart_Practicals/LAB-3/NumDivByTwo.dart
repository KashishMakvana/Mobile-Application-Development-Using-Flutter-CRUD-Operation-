import 'dart:io';
void main()
{ 
     int? num1;
     int? num2;
    print("Enter the Number 1:");
    num1 = int.parse(stdin.readLineSync()!);
    print("Enter the Number 2:");
    num2 = int.parse(stdin.readLineSync()!);

    for(int i=num1;i<=num2;i++)
    {
          if(i%2==0 && i%3!=0)
          {
               print("Number: $i");
          }
    }
}