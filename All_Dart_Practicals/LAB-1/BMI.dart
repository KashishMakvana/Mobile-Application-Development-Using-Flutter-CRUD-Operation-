import 'dart:io';
import 'dart:math';

void main()
{
     double? weight;
     double? height;
     double? BMI;

     print("Enter the weight in Kg:");
     weight = double.parse(stdin.readLineSync()!);

     print("Enter the height in inch:");
     height = double.parse(stdin.readLineSync()!);

    BMI =  weight/pow(height,2);
    print("BMI Is:$BMI");

}
