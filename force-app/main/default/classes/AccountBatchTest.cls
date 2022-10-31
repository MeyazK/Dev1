@istest
public class AccountBatchTest {
    @istest
    private static void testBatch1(){
      List<account> listAcc = new list<account>();
       for (Integer i = 0; i < 900; i++) {
            account a = new account();
            a.Name = 'SoftInnovas 3Oct-v'+i;
            a.Active__c = 'Yes';
            listAcc.add(a);
        }
        insert listAcc;

        test.startTest();
        AccountsBatch ab =new AccountsBatch();
        Database.executeBatch(ab,900);    // for'daki sayiya esit veya fazla olmak zorunda.
        test.stopTest(); // bu iki method arasina anonymous kismindaki yeri kopyaladik.

        List<account> results = [SELECT id, description from account];
        system.assert(results[0].description.contains('Batch'));
    }

}
