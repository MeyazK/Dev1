public  class DMLPractice {
    public static void insertNewAccount(){
        account acc1=new account();
        acc1.Name='DML Practicce ';
        acc1.Rating=' Hot';
        acc1.Type='Prospect';
        insert acc1;
        system.debug('Name,Rating and Type of values are inserted...'+acc1);
    }
    public static void createOppsForNewAcc(){  
       list<account> acc =[SELECT id,name 
                           FROM account 
                           ORDER BY CreatedDate desc limit 1]; 
        // QUERY last inserted account 
        // en son eklenen accountu siraladik.   

        List<opportunity> oppList = new list<opportunity>();
        date todaydate=date.today();

        for (Integer i = 1; i < 6; i++) {
            opportunity opp1=new opportunity(); 
            // bu olmadan opportunity listesi ile baglanti kuramiyor.
            
            opp1.name='DML Opp ' +i;
            opp1.accountid=acc[0].id;
            opp1.amount =500000;
            opp1.closedate=todaydate.addDays(30);
            opp1.stagename='Prospecting';

            oppList.add(opp1);
                     
        }
        insert oppList;

    }
    public static void updateOpps(){
        list<opportunity> oppQuery=[SELECT id,name 
                                   FROM Opportunity 
                                   ORDER BY createddate desc limit 5];
        list<opportunity> updateNames =new list<opportunity>();

        // OPPORTUNITY icin query yapmis olduk ve son eklenen 5 kaydi istedik.
        integer i=1;
        for (opportunity eachNames : oppQuery) {
            eachNames.name='DML Opp Update'+ i;
            i++;
            updateNames.add(eachNames); 
        }
        update updateNames; 
    }
    public static void deleteOpps(){
        list<opportunity> lastOpps=[SELECT id,name 
                                    FROM opportunity 
                                    ORDER BY CreatedDate desc limit 5];
        if (!lastOpps.isEmpty()) {
            delete lastOpps;
        }
    }
}
