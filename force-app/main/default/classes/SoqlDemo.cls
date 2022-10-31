public  class SoqlDemo {
    public static void  accountSOQL_1(){
        // SOQL query  always returns the List<sObject>
        List<account> listAcc =[SELECT id, name, phone, active__c 
                                FROM account
                                WHERE name like 'A%'];
        system.debug('account list===>> '+listAcc);

        system.debug('account list==>>'+listAcc);
        system.debug('ListAcc # of record ==>>'+listAcc.size());

        Account acc =[SELECT id, name , phone , active__c 
                      FROM account 
                      ORDER BY CreatedDate 
                      DESC Limit 1];
        system.debug('latest created record==>'+acc);
    }
    public static void accountSOQL_2(){
        Account acc =[SELECT id, name , phone , active__c ,AccountNumber 
                      FROM account 
                      ORDER BY CreatedDate 
                      DESC Limit 1];
        system.debug('latest created record==>'+acc);
        string accName=acc.Name;
        string accPhone = acc.phone;
        system.debug('acc name is '+accName+'phone is '+accPhone+',acc number: '+acc.AccountNumber );

    }
    public static void accountSOQL_3(){

        List<account> listAcc =[SELECT id, name, phone, active__c ,AccountNumber 
                                FROM account 
                                WHERE name like '%A%'];
        system.debug('account list===>> '+listAcc);
        for (account  eachAccount : listAcc) {
            string accName=eachAccount.Name;
            String accPhone=eachAccount.phone;
            system.debug('acc name is '+accName+'phone is '+accPhone+',acc number :'+eachAccount.AccountNumber);
            system.debug('-----------------');


            
        }
    }
    public static void accountSOQL_Filter(){
        string filterName='Salesforce Inc.';
        list<account> listAcc=[SELECT id, name , active__c 
                               FROM account 
                               WHERE name =:filterName]; // static method
        system.debug('filter name ='+listAcc);
        // : bu ifade onemli ve zorunlu

    }
    public static void accountSOQL_Filter(string accName){
        List<account> listAcc =[SELECT id, name,active__c 
                                FROM account 
                                WHERE name=:accName ]; // dynamic method 
        system.debug('filte name:'+listAcc);

    }
    
}