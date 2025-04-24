import 'dart:io';
void main()
{ 
     int num;
     int fact=1;
     int i;
    print("Enter the Number:");
    num = int.parse(stdin.readLineSync()!);

    for(i=1;i<=num;i++)
    {
          fact=fact*i;
    }
    print("Factorial of $num is : $fact");
}