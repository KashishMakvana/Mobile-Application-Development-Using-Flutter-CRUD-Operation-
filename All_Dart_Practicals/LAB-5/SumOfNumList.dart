import 'dart:io';


void main() 
{
      print("Enter the number of elements in the array:");
      int n = int.parse(stdin.readLineSync()!);
      List<int> numList = [];

      print("Enter the element of list 1:");
      for (int i = 0; i < n; i++) {
        print("Enter element ${i + 1}:");
        int num = int.parse(stdin.readLineSync()!);
        numList.add(num);
      }
         int sum=0;
        for (int num in numList) 
        {
          if (num % 3==0 || num % 5 ==0) 
          {
            sum = sum + num;
          }
        }
        print("sum is :$sum");
      
}
