public class AccountTriggerHandler17 {
    public static void insertContacts(list<account> triggerNew,
                                      list<account>triggerOld){

       if (triggerOld==null) {
           list<contact> listC=new list<contact>();
           for (account acc : triggerNew) {
               for (Integer i = 1; i < 3; i++) {

                    Contact c=new contact();
                    c.LastName= acc.name+' Contact ' +i ;
                    c.accountId=acc.id;
                    listC.add(c);
               }
           }
           insert listC;
       }
    }
}
