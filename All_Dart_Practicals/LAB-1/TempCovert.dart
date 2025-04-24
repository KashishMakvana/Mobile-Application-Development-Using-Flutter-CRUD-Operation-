import 'dart:io';

void main()
{
     double? fahrenheit;
     double? celsius;

     print("Enter the temperature in Fahrenheit:");
     fahrenheit = double.parse(stdin.readLineSync()!);
     celsius = (fahrenheit - 32)*(5/9);
     print("Temperature Fahrenheit to celsius : $celsius");
}
