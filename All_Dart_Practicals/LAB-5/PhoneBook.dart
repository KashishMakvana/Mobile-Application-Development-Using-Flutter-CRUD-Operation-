import 'dart:io';
void main()
{
    Map<int,dynamic> phonebook = {};
    print("Enter phone Numbers:");
   while(num!=0)
    {
        int num = int.parse(stdin.readLineSync()!);
        phonebook[num] = num;
        print(phonebook);
    }
}