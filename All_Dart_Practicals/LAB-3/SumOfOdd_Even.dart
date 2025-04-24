import 'dart:io';
void main()
{ 
    int num;
    int even=0;
    int odd=0;

    while(true)
    {
      print("Enter the Number:");
      num=int.parse(stdin.readLineSync()!);
      if(num==0)
      {
        break;
      }
      else if(num%2!=0 && num>0)
      {
        odd=(odd+num);
      }
      else if(num%2==0 && num>0)
      {
        even+=num;
      }
      
    }

    //  while(true){
    //          print("Enter the Number:");
    //          num=int.parse(stdin.readLineSync()!);
    //          if(num==0){
    //             break;
    //          }
    //          else if(num%2==0 && num>0)
    //          {
    //             even = even+num;
    //          }
    //          else if(num<0 && num%3==1){
    //            odd = odd+num;
    //          }
    //          else{
    //             print("Invalid Input..");
    //          }
             
    //  }
     print("Count of Even Numbers:$even");
      print("Count of odd Numbers:$odd");
}