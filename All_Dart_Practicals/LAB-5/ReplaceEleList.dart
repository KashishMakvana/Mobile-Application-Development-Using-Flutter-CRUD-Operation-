void main()
{
          List<String> city = ['Delhi','Mumbai','Banglore','Hyderabad','Ahemdabad'];
          print("Elemnst Of List before Replacemnet:");
          print(city);
          int i;
          for(i=0;i<city.length;i++)
          {
                if(city[i]=='Ahemdabad')
                {
                  city[i]='Surat';
                }
          }
         print("Elemnst Of List after Replacemnet:");
        print(city);
}