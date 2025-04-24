//using positional parameater//
void max(int n1,int n2)
    {

      print("-----Using positional Parameater-----");
      print("n1 : $n1 and n2:$n2");
      if(n1>n2)
      {
              print("Maximum Number is : $n1");
      }
      else{
              print("Maximum Number is : $n2");
      }
    }
  
 //using named parameater//
 void max1({required n1,required n2})
    {
      print("-----Using Named Parameater-----");
      print("n1 : $n1 and n2:$n2");
      if(n1>n2)
      {
              print("Maximum Number is : $n1");
      }
      else{
              print("Maximum Number is : $n2");
      }
    }
    
    //using Defult parameater//
 void max2({int n1=5,int n2=6})
    {
      print("-----Using Defult Parameater-----");
      print("n1: $n1 and n2 :$n2");
      if(n1>n2)
      {
              print("Maximum Number is : $n1");
      }
      else{
              print("Maximum Number is : $n2");
      }
    }
  void main()
  {    
   max(5,6);
   max1(n1: 5,n2: 6);
   max2();
  }