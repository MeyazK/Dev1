public  class AccountContactFutureHandler {
    @future
    public static void updateNumberContacts(Set<Id> setIds){
        decimal allContact=0;
        list<account> accList1=[SELECT id,number_of_contacts__c,
                                (SELECT id, accountId from contacts)
                                FROM account where id=:setIds];

         for (account acc : accList1) {

            allContact=acc.number_of_contacts__c;
            allContact=acc.contacts.size();
         }
         update accList1;

    }

}
