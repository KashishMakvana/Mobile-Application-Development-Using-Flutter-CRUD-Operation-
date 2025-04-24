import 'dart:io';

/*void main()
{
     int? num1;
     int? num2;
     String? op;
    print("Enter the Number 1:");
    num1 = int.parse(stdin.readLineSync()!);
    print("Enter the Number 2:");
    num2 = int.parse(stdin.readLineSync()!);
    print("Enter the Opration");
    op = stdin.readLineSync();

    if(op=='+')
    {
         print("Addion of $num1 and $num2 is :${num1+num2}");
    }
     else if(op=='-')
     {
      print("Substartion  of $num1 and $num2 is :${num1-num2}");
     }
     else if(op=='*')
     {
      print("Multiplication of $num1 and $num2 is :${num1*num2}");
     }
     else if(op=='/')
     {
      print("division  of $num1 and $num2 is :${num1/num2}");
     }
     else{
      print("Exit..");
     }
}*/

void main()
{
     int? num1;
     int? num2;
     int? choice;
    print("Enter the Number 1:");
    num1 = int.parse(stdin.readLineSync()!);
    print("Enter the Number 2:");
    num2 = int.parse(stdin.readLineSync()!);

  do
    {
       print("Enter your chocie:");
       print("1 ----> Addtion");
       print("2 ----> Subsatrtion");
       print("3 ----> Multiplication");
       print("4 ----> Division");
       print("5 ----> Exit");
      choice = int.parse(stdin.readLineSync()!);
      switch(choice)
      {
        case 1:
        {
               print("Addion of $num1 and $num2 is :${num1+num2}");
              break;  
        }
        case 2: 
        {
                print("Substartion  of $num1 and $num2 is :${num1-num2}");
                  break;
        } 
        case 3:
        {
              print("Multiplication of $num1 and $num2 is :${num1*num2}");
                break;
         }
        case 4:
        {
              print("division  of $num1 and $num2 is :${num1/num2}");
                break;
        }
        case 5:
        {
          print("Exiting....");
          exit(1);
        }
      }
    }while(choice<=5);
}