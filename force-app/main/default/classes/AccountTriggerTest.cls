@isTest
public class AccountTriggerTest {
    @isTest
    static void testAccountTrg(){
        account acc1 = new account();
        acc1.name = 'SI Test';
        acc1.industry = 'Energy';

        account acc2 = new account();
        acc2.name = 'TI Test';
        acc2.industry = 'Energy';

        account acc3 = new account();
        acc3.name = 'RI Test';
        acc3.industry = 'Banking';

        List<account> listAcc = new List<account>{acc1, acc2, acc3};
        insert listAcc;

        acc3.vip__c= true;
        update acc3;
    }

} 
