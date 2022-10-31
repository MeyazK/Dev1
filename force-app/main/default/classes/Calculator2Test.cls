@isTest
public  class Calculator2Test {
       @isTest
       private static void addTest1(){
        calculater2 c = new calculater2();
        integer sum = c.add(10,15);
        system.assertEquals(25,sum);
        
      }
      @isTest
      private static void addTest2(){
        Calculater2 c =new Calculater2();
        integer sum = c.add(10,15,5);
        system.assertEquals(30,sum);

      }
      @isTest
      private static void leapYearTest() {
          Calculater2 c2 = new Calculater2();
          date dtt = date.newInstance(2000, 01, 01);
          boolean isLeap2 = c2.leapYearCheck(dtt);
          system.assertEquals(true, isLeap2);
      }
}
