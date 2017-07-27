    /*
    Java Hello World example.
    */
 

public class HelloWorldExample{
     
      public static void main(String args[]){
     
        /*
        Use System.out.println() to print on console.
        */
        System.out.println("Hello World !");
       CoordinateConversion cc = new CoordinateConversion();
       System.out.println(cc);
       /*3145.5626,N,10620.5439,W */
       double lat = 31.759376;
       double llong = -106.3423;
       System.out.println(lat+ " "+ llong);

       String utm;
        utm = cc.latLon2UTM(lat, llong);
        System.out.println(utm);

      }
     
    }
     
    /*
     
    OUTPUT of the above given Java Hello World Example would be :
     
    Hello World !
     
    */

