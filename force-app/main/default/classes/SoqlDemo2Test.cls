@isTest
public class SoqlDemo2Test {
    @TestSetup
    static void makeData(){
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

        List<contact> listCont = new List<contact>();
        for (Integer i = 0; i < 300; i++) {
            contact cont = new contact();
            cont.lastname = 'SOQL test ' + i;
            if (i<100) {
                cont.accountid = acc1.id;
            }else if (i<200) {
                cont.accountid = acc2.id;
            } else if (i<300) {
                cont.accountid = acc3.id;
            }
            listCont.add(cont);
        }
        insert listCont;   
    }
    @isTest
    private static void testSOQLChildToParent() {
        test.startTest();
        SoqlDemo2.childToParent_SOQL1();
        test.stopTest();
    }// start ce stop methodlari system metodudur ve governer limit leri sifirlamaya yarar eger siniri gecerse.

    @isTest
    private static void testSOQLParentToChild2() {
        //to use records created in setup, we do soql
        list<account> listAcc = [select id, type, name from account];//how many records this will fetch? 3.
        for (account acc : listAcc) {
            acc.Type = 'Customer - Direct';
        }
        update listAcc;

       //create opportunity for accounts created in testSetup method 
       List<Opportunity> listOPP = new List<Opportunity>();
       for (Integer i = 0; i < 300; i++) {
           Opportunity o = new Opportunity();
           o.Name = ' test opp ' + i;
           o.StageName = 'Closed Won';
           o.CloseDate = Date.today();
           if (i < 100) {
               o.AccountId = listAcc[0].Id;
           } else if (i < 200) {
               o.AccountId = listAcc[1].Id;
           } else if (i < 300) {
               o.AccountId = listAcc[2].Id;
           }
           listOPP.add(o);
       }
       insert listOpp;
       //END of prepare data
       test.startTest();
       SoqlDemo2.parentToChild_SOQL1();
       test.stopTest();

    }
}
