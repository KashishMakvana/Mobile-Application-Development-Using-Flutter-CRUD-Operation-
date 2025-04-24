import 'dart:io';
void main()
{ 
     double p,r,n;
     double i=0;
    print("Enter the P:");
    p = double.parse(stdin.readLineSync()!);
    print("Enter the R:");
    r = double.parse(stdin.readLineSync()!);
    print("Enter the N:");
    n = double.parse(stdin.readLineSync()!);

    void calc_interest(double p, double r,double n)
    {
        i = p*r*n/100;
        print("Simple Interest Is:$i");
    }
    calc_interest(p,r,n);
}