//using positional parameater//
void prime(int n)
    {
        print("-----Using positional Parameater-----");
        int count=0;
        for(int i=2;i<n; i++)
        {
                if(n%i==0)
                {
                        count=1;
                        break;
                }
        }
        if(count==1)
        {
                print("Number $n is prime..");
        }
        else{
                print("Number $n is not prime");
        }
    }
  
 //using named parameater//
 void prime1({required n})
    {
      print("-----Using Named Parameater-----");
       int count=0;
        for(int i=2;i<n; i++)
        {if(n%i==0)
                {
                        count=1;
                }
        }
        if(count==1)
        {
                print("Number $n is prime..");
        }
        else{
                print("Number $n is not prime");
        }
    }
    
    //using Defult parameater//
 void prime2({int n=6})
    {
       int count=0;
       for(int i=2;i<n; i++)
        {
                if(n%i==0)
                {
                        count=1;
                }
        }
        if(count==1)
        {
                print("Number $n is prime..");
        }
        else{
                print("Number $n is not prime");
        }
               
    }
  void main()
  {    
   prime(6);
   prime1(n:6);
   prime2();
  }











//using named parameater//
 void num_Count1({required n})
    {
      
      print("-----Using Named Parameater-----");
          List<int> a = [n];
          int i;
          for(i=0;i<a.length;i++)
          {
            print(a[i]);
          }
        int even=0;
        int odd=0;
        for(int i=0;i<a.length; i++)
        {
             if(n%2==0)
                {
                        even=even+1;
                        print("Count of Even number is : $even");
                }
                else {
                        odd = odd+1;
                        print("Count of Odd number is : $odd");
                }
        }
    }
    
    //using Defult parameater//
 void num_Count2({int n=10})
    {
           print("-----Using Named Parameater-----");
          List<int> a = [n];
          int i;
          for(i=0;i<a.length;i++)
          {
            print(a[i]);
          }
        int even=0;
        int odd=0;
        for(int i=0;i<a.length; i++)
        {
             if(n%2==0)
                {
                        even=even+1;
                        print("Count of Even number is : $even");
                }
                else{
                  odd = odd+1;
                        print("Count of Odd number is : $odd");
                }             
        }            
    }
