import 'dart:io';
void main()
{ 
     String str;  
    print("Enter the String:");
    str = stdin.readLineSync()!;
    for(int i=str.length-1;i>=0;i--)
    {
      print(str[i]);
    }

    //OR//
    print(str.split("").reversed.join());
}