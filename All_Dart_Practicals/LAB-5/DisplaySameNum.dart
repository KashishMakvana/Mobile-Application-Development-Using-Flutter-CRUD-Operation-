import 'dart:io';

void main() 
{
      print("Enter the number of elements in the array:");
      int n = int.parse(stdin.readLineSync()!);
      int i,j;
      List<int> numList1 = [];

      print("Enter the element of list 1:");
      for (int i = 0; i < n; i++) {
        print("Enter element ${i + 1}:");
        int num = int.parse(stdin.readLineSync()!);
        numList1.add(num);
      }

      List<int> numList2 = [];
      print("Enter the element of list 2:");
      for (int i = 0; i < n; i++) {
        print("Enter element ${i + 1}:");
        int num = int.parse(stdin.readLineSync()!);
        numList2.add(num);
      }

      print("Same Elements Of Both list : ");
      for(i=0;i<numList1.length;i++)
      {
        for(j=i;j<numList2.length;j++)
        {
            if(numList1[i]==numList2[j])
            {
              List<int> numList3 = [numList1[i],numList2[j]];
              print(numList3);
            }
        }
      }
}