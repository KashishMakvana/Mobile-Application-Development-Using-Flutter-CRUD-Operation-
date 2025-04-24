
//using positional parameater//
void calIntrest(double p,double r,double n)
    {

      print("-----Using positional Parameater-----");
      double i;
      print("p : $p and r:$r and n:$n");
      i = (p*r*n)/100;
      print("Intrest is: $i");
    }
  
 //using named parameater//
 void calIntrest1({required p,required r,required n})
    {
      print("-----Using Named Parameater-----");
      double i;
      print("p : $p and r:$r and n:$n");
      i = (p*r*n)/100;
      print("Intrest is: $i");
    }

    //using Defult parameater//
 void calIntrest2({double p=5,double r=6,double n=2})
    {
      print("-----Using Defult Parameater-----");
      double i;
      print("p : $p and r:$r and n:$n");
      i = (p*r*n)/100;
      print("Intrest is: $i");
    }
  void main()
  {    
   calIntrest(5,6,2);
   calIntrest1(p: 5,r: 6,n:2);
   calIntrest2();
  }