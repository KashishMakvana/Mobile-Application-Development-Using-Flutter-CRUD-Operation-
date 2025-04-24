import 'dart:io';
void main()
{ 
     int num;
     int i;
     int count=0;
    print("Enter the Number:");
    num = int.parse(stdin.readLineSync()!);
		for(i=1;i<=num;i++)
		{
			if(num%i==0)
			{
           count++;
			}
		}
		if(count==2)
			{
				print("Number is prime.");
			}
			else
			{				
		      print("Number is not  prime.");
    	}
}