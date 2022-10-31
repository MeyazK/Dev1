public  class Assignment5 {
    /*
     public static decimal sumOppAmountCW(){
        list<opportunity> sumAmount =[SELECT stagename,amount  
                                      FROM opportunity 
                                      WHERE stagename = 'Closed Won' 
                                      AND amount!=NULL];
        decimal sum=0;
        for (opportunity eachOpp : sumAmount) {
            sum += eachOpp.amount;
        }
        
        system.debug('Sum of all of opportunities which are Closed Won'+sum);
        return sum;
     }
     public static list<account>  accsCWOpps (string stgName){ 
        // void demiyoruz cunku soruda dynamic demis.Ve bir objectin metodunu parametreli sekilde yazmanin 
        // yolu da bu sekildedir. 

        List<Account> accList =[SELECT id ,name ,
                                (SELECT id,name, stagename 
                                FROM opportunities 
                                WHERE stagename ='Closed Won')  
                                FROM account];

        // Parantez icinde bir objecte baglanip veri cekme olayi ile object ismi '.' ve
        // ilgili fieldi yazma yontemleri arasindaki farksudur:
        // Eger isteyecegimiz field parent objectin icinde ise ornegin account'dan name cekme :
        // bunu '.' li olan ile yapabiliriz. Yani  account.name gibi .
        // Ama diger turlu ise yani child'dan bir veri cekecekceksek , bir parent'in birden cok child'i
        // olabilecegi icin bunu parantez icinde belirtmemiz gerekiyor. 

       List<Account> newAccList =new List<Account>();

       for (account eachAcc : accList) {
           if (!eachAcc.opportunities.isEmpty()) {
               newAccList.add(eachAcc);
           }
          
           
       }
       system.debug('List of accounts where at least one opportunity stageName is  '+stgName);
       
       return newAccList;
     }
     
     public static list<account> accsWConts() {  // hangi durumlarda methodu bu sekilde tanimliyoruz ???
        list<account> listAcc = [SELECT id, name 
                                 FROM account 
                                 WHERE id  
                                 IN (SELECT AccountId FROM contact)];
        // Bu in yapisini bir field'in baska bir object icinde bulunma durumunu sorgulama da kullanilarbilir.
        return listAcc;
     
     }
     */
     public static void insertCont(string accId) {
        contact cont = new contact();
        cont.AccountId = accId;
        account acc = [select name from account where id = :accId limit 1];
        cont.lastname = acc.name;
        insert cont;

        // 
    }
     
     public static void updateDesc(){
        list<opportunity> top10 =[SELECT id,name, description 
                                  FROM opportunity limit 10 ];
         list<opportunity> updatedList =new List<opportunity>();
         
         for (opportunity updateDesc : top10) {
            updateDesc.description='This is one of the top 10 opportunities.Please work on this properly';
            updatedList.add(updateDesc);
         }
         update updatedList;
     }
     
      
     public static list<opportunity> NumberOfOpp(string accoount_id2,integer n){
        list<opportunity> listOpp =new list<opportunity>();
        account acc=[SELECT id,name,annualrevenue from account where id=:accoount_id2];
        date todaysdate=date.today();
        if (n<=0) {
            system.debug('Please tell us how many opportunities needs to be created');
        } else {
            for (Integer i = 0; i < n; i++) {
                opportunity opp=new opportunity();
                opp.closedate=todaysdate.addYears(3);
                opp.stagename='Prospecting';
                if (acc.annualrevenue!=null) {
                    opp.amount=acc.annualrevenue/n;
                }
                opp.name=acc.name +i;
                listOpp.add(opp);
            }
            insert listOpp;
        }
        return listOpp;


     }
     public static void addCont(){
        list<account> listAcc =[SELECT id,name  from account where id not in (select accountid from contact)];
        list<contact> listCont=new list<contact>();
        for (account eachAcc : listAcc) {
            contact cnt=new contact();
            cnt.lastname=eachAcc.name;
            listCont.add(cnt);
        }
        insert listCont;
     }
    

}
