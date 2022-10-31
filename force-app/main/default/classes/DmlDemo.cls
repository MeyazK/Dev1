public class DmlDemo {
    public static void dmlInsertDemo_StndObj1(){
        // 1. create new instence 
        account acc=new account();
        // 2. set field values
        acc.Name='SoftInnovas';
        // 3. set other fileds
        acc.phone='6534467';

        // 4.insert
        insert acc;
        system.debug(acc);

    }
    /*
    public static void dmlInsertDemo_cstObj1(){
        Salesforce_Project__c  sp = new Salesforce_Project__c();
        sp.project_name__c='Teach DML  to Batch9 the great ';
        sp.Description__c='All 50% are great learners. ';
        insert sp;

    }
    public static void dmlUpdateDemo_1(){
        account acc=new account();
        acc.name='hrjrhrgeirojweok';
        system.debug('before inserting acc==>>'+acc);
        insert acc;
        system.debug('after inserting acc '+acc);

        acc.name='salesforce inc.';
        update acc;
        system.debug('after updating acc===>>'+acc);
    }
    */
    public static void dmlUpdateDemo_2(){
        account acc=[SELECT id ,name FROM Account WHERE name ='salesforce inc.1' limit 1];
        // change the name in acc 
        acc.name='salesforce inc.2';
        // update dml
        update acc;
    }
    /*
    public static void dmlInsertDemo_2(){
        account acc=[SELECT id ,name 
                     FROM Account
                     ORDER BY createdDate desc limit 1];

       // create contact fro latest created account
       contact cont=new contact();
       cont.LastName='Biden';
       cont.AccountId=acc.id;
       insert cont;
    }
    */
   
    public static void dmlInsertDemo_3(){
        Salesforce_project__c sp=[select id from salesforce_project__c order by createddate desc limit 1];

        //new ticket 
        salesforce_ticket__c st= new salesforce_ticket__c();
        st.Subject__c='Learn apex dml';
        st.Description__c='kinda simple';
        st.priority__c='High';
        st.status__C='New';
        st.Requested_by_date__c=date.newInstance(2022,9,3);

        //set relationship field 
        st.Salesforce_Project__c=sp.id;
        insert st;

    }
    
    /*
    public static void dmMultipleRecordInsert_right1(){
        List<account> listAccount = new List<account>();

         account acc1=new account();
         acc1.Name='bulk acc 1';
         //insert acc1
         listAccount.add(acc1);

         account acc2=new account();
         acc2.Name='bulk acc 2';
         //insert acc2
         listAccount.add(acc2);

         account acc3=new account();
         acc3.Name='bulk acc 3';
         //insert acc3
         listAccount.add(acc3);

         insert listAccount; // insert list
    }
    public static void dmMultipleRecordInsert_right2(){
        List<account> listAcc = new List<account>();
        for (Integer i = 0; i < 155; i++) {
            account a=new account();
            a.Name='SoftInnovas 30ct'+i;
            a.active__c='Yes ';
            listAcc.add(a);

            //insert a;   ------>>>     Not work , why?

            // this insert statement will be called for each iteration ( 155  times ).
            // it will hit limit of 150 dmls/
            // solution is a  the making a LIST 
             
            
        }
        insert listAcc;
    }
    public static void dmMultipleRecordUpdate_right1(){

        
        List<account> fetchAccounts=[select id,name from account order by createddate desc limit 155];
        List<account> updateAcc = new List<account>();
        for (account eachAcc : fetchAccounts) {
            eachAcc.name+=' via B.0';
            updateAcc.add(eachAcc);
        }
        if(!updateAcc.isEmpty()){
            update updateAcc;

        }

    }
    */
}
