@isTest
public  class DmlDemoTest {
    @isTest
   private static void dmlTest1(){
      DmlDemo.dmlInsertDemo_StndObj1();
      // soql ->> it does not anything from org.
      // we will records which are created this test method.
      list<account> listAcc= [SELECT id,name FROM account ];
      system.assertEquals(1,listAcc.size());
      system.assertEquals('SoftInnovas',listAcc[0].name);

   }
   @isTest
   private static void dmlUpdateDemoTest2(){

      // 1: prepae data
      account acc=new account();
      acc.name='salesforce inc.1';
      insert acc;


      //2. call method
      DmlDemo.dmlUpdateDemo_2();

      //3. assert
      //to assert data if we are inserting/updating in our method.
      //Always fetch data using soql
      list<account> checkAccount = [SELECT id, name 
                                    FROM account
                                    WHERE name = 'salesforce inc.2']; 
     system.assertEquals(1, checkAccount.size());
   }
   @isTest
   private static void dmlInsertDemo3() {
       //1. prepare data
       Salesforce_Project__c sp = new Salesforce_Project__c();
       sp.Project_Name__c = 'Teach DML to Batch9 the great';
       sp.Description__c = 'All 50% are great learners.';
       insert sp;

       //2. call method
        DmlDemo.dmlInsertDemo_3();
       //3. assert
       List<Salesforce_Ticket__c> listST = [select id, Subject__c, salesforce_project__c 
                                            from Salesforce_Ticket__c 
                                            where Subject__c = 'Learn APEX DML'];
        system.assertEquals(sp.Id,listST[0].Salesforce_Project__c);
   }    

}

