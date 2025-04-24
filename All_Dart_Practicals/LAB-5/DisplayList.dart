import 'dart:io';

void main() 
{
       print("Enter the number of elements in the array:");
      int n = int.parse(stdin.readLineSync()!);

      List<int> numbers = [];

      for (int i = 0; i < n; i++) {
        print("Enter element ${i + 1}:");
        int num = int.parse(stdin.readLineSync()!);
        numbers.add(num);
      }
      print("Number is assending order:");
      numbers.sort();
      print(numbers);
}