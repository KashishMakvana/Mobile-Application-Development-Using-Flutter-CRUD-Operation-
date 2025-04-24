import 'dart:io';


     void countEvenOddNumbers1(List<int> numbers)
     {
          //using positional parameater//
                print("-----Using positional Parameater-----");

        int evenCount = 0;
        int oddCount = 0;

        for (int num in numbers) {
          if (num % 2 == 0) {
            evenCount++;
          } else {
            oddCount++;
          }
        }
          print("Odd Count: $oddCount");
          print("Even Count: $evenCount");
     }


    void countEvenOddNumbers({required List<int> numbers}) 
    {
      //using namaed parameater//
            print("-----Using Named Parameater-----");

      int evenCount = 0;
      int oddCount = 0;

      for (int num in numbers) {
        if (num % 2 == 0) {
          evenCount++;
        } else {
          oddCount++;
        }
      }
        print("Odd Count: $oddCount");
        print("Even Count: $evenCount");
    }

  void countEvenOddNumbers2({List<int> numbers}) 
    {
      //using defult parameater//
            print("-----Using defult Parameater-----");
      int evenCount = 0;
      int oddCount = 0;

      for (int num in numbers) {
        if (num % 2 == 0) {
          evenCount++;
        } else {
          oddCount++;
        }
      }
        print("Odd Count: $oddCount");
        print("Even Count: $evenCount");
    }

   

void main() {
      print("Enter the number of elements in the array:");
      int n = int.parse(stdin.readLineSync()!);

      List<int> numbers = [];

      for (int i = 0; i < n; i++) {
        print("Enter element ${i + 1}:");
        int num = int.parse(stdin.readLineSync()!);
        numbers.add(num);
      }

      countEvenOddNumbers(numbers:numbers);
      countEvenOddNumbers1(numbers);
      countEvenOddNumbers2();

    }