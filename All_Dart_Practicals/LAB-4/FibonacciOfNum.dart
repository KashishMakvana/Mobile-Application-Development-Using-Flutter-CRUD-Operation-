//using positional parameater//
void fibo(int n)
    {
        print("-----Using positional Parameater-----");
       int a=0;
       int b=1;
       print("a : $a and b:$b");
        for(int i=1;i<10; i++)
        {
                int c=a+b;
                print(c);
                a=b;
                b=c;
        }
    }
  
 //using named parameater//
 void fibo1({required n})
    {
      print("-----Using Named Parameater-----");
      int a=0;
       int b=1;
       print("a : $a and b:$b");
        for(int i=1;i<10; i++)
        {
                int c=a+b;
                print(c);
                a=b;
                b=c;
        }
    }
    
    //using Defult parameater//
 void fibo2({int n=10})
    {
      int a=0;
       int b=1;
       print("a : $a and b:$b");
        for(int i=1;i<10; i++)
        {
                int c=a+b;
                print(c);
                a=b;
                b=c;
        }
    }
  void main()
  {    
   fibo(10);
   fibo1(n:10);
   fibo2();
  }
