import 'dart:io';

void main()
{
     double? meter;
     double? feet;

     print("Enter meter:");
     meter = double.parse(stdin.readLineSync()!);
     feet = meter*3.281;
     print("Feet from meter: $feet");
}
