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

    if(num1>num2&&num1>num3)
    {
          print("Number 1 : $num1 is largest Number Amoung three numbers..");
    }
    else if(num2>num1&&num2>num3)
    {
           print("Number 2 : $num2 is largest Number Amoung three numbers..");
    }
    else{
          print("Number 3 : $num3 is largest Number Amoung three numbers..");
    }

  }