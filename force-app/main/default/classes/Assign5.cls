public  class Assign5 {
    public static void return_Sum(){
        list<opportunity> oppList=[SELECT stagename,amount
                            FROM Opportunity 
                            WHERE stagename='Closed Won' 
                            AND amount !=null];

        decimal sum=0;
        for (opportunity eachStage : oppList) {
            sum +=eachStage.amount;
        }
        system.debug('Sum of amount in opportunity object which has Closed Won Stage is '+sum);
 
    }
    public static list<account> account_Method( string stage_name){
        list<account> listOfAccount=[SELECT id,
                                     (SELECT stagename 
                                     FROM Opportunities 
                                     WHERE stagename = 'Closed Won' )  
                                     FROM Account];

        list<account> emptyList =new list<account>();
        for (account eachAcc : listOfAccount) {
            emptyList.add(eachAcc);
        }
        system.debug('List of accounts where at least one opportunity stageName is  '+stage_name);
        return emptyList;
    }
    public static  list<account>  contact_Method(){
        list<account> listOfAccount2=[SELECT id,name from Account
                                      WHERE id IN (SELECT accountid from Contact)];
        
        return listOfAccount2;
    }
    public static void updateOpp(){
        list<opportunity> top10=[SELECT id, description from opportunity limit 10];
        List<opportunity> emptyOpp=new list<Opportunity>();
        for (opportunity eachOpp : top10) {
            eachOpp.description='This is one of the top 10 opportunities. Please work on this properly';
            emptyOpp.add(eachOpp);
        }
        update emptyOpp;
    }
    
}
