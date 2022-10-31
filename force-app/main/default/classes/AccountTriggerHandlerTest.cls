@isTest
public  class AccountTriggerHandlerTest {
    @isTest
   private static void testUpdateDescription(){
    account acc1 = new account();
    acc1.name = 'SI Test';
    acc1.industry = 'Energy';
    acc1.active__c='Yes';

    account acc2 = new account();
    acc2.name = 'TI Test';
    acc2.industry = 'Energy';

    account acc3 = new account();
    acc3.name = 'RI Test';
    acc3.industry = 'Banking';

    List<account> listAcc = new List<account>{acc1, acc2, acc3};
    insert listAcc;

    acc2.active__c='Yes';
    update acc2;
    acc3.active__c='Yes';
    update acc3;
    acc3.vip__c= true;
    update acc3;


       //assertion
       list<account> resultAcc = [select id, name, active__c, description from account];
       for (account acc : resultAcc) {
           if (acc.Active__c == 'Yes') {
               system.assert(acc.Description.contains('Active'));
           } else {
               system.assert(String.isBlank(acc.Description)); 
           }
       }
   }
   @isTest 
   private static void  testUpdateVIP(){
    account acc1 = new account();
        acc1.Name = 'SI Test';
        acc1.Industry = 'Energy';
        acc1.Active__c = 'Yes';
 
        account acc2 = new account();
        acc2.Name = 'UI Test';
        acc2.Industry = 'Energy';
 
        List<account> accList = new List<account> {acc1, acc2};
        insert accList;

        List<contact> listContact = new list<contact>();
       for (Integer i = 0; i < 200; i++) {
           contact c = new contact();
           c.LastName = 'TEST Trigger ' + i;
           if (i< 100) {
               c.AccountId = acc1.id;
           } else if (i < 200) {
               c.AccountId = acc2.id;
           }
           listContact.add(c);
       }
       insert listContact;

       acc1.VIP__c=true;
       acc2.VIP__c=true;
       List<account> accList2 = new List<account>{acc1,acc2};    //-->> suslu parantez icinde yazdik
       // update will fire trigger

       update accList2;


       // asserting

       List<contact> resultContacts = [SELECT id, vip__c from contact];
       system.assertEquals(true, resultContacts[0].vip__c);

  }

}
