public class AccConAndOppOperations {
    public static list <account> returnAccount(){
        list<account> accList=new list<account>();
        accList=[SELECT name,annualrevenue,type,accountsource 
                 FROM account];
        return accList;
    }
    public static  list<opportunity> opportunityUpdate(string leadSourcee, string stagee){
        List<opportunity> oppList = new List<opportunity>();
        oppList=[SELECT id,name ,Amount
                 FROM Opportunity
                 WHERE leadSource=:leadSourcee and stagename=:stagee];
        return oppList;
    }
    public static void opportunityUpdate1(){
        list<opportunity> oppList=new list<opportunity>();
        oppList=[select id,name,accountid,account.annualrevenue from Opportunity
                  where Account.type='Customer - Direct'];
        system.debug(oppList);
        oppList=[select id,name,amount from opportunity where stagename='Closed Won'];
        system.debug(oppList);
    }
    public static void fetchAccountsWithOpps(String AccessType, String oppStage){

        List<Account> accsList = new List<Account>();
        accsList = [Select Name, AnnualRevenue,(Select Name, Amount from Opportunities Where StageName =:oppStage)
                    from Account Where Type =: AccessType];
            for(Account acc : accsList){
                system.debug('List for Opportunities for Account -->' + acc.Name);
                for(Opportunity opp : acc.Opportunities){
                    system.debug('Opportunity -->' + opp);
                }
            }
     }
     public static account accountCreaation(string name, decimal annualrevenue , string  type){
          account acc= new account();
          if (name!=null) {
            acc.name=name;
            acc.annualrevenue=annualrevenue;
            acc.type=type;
            insert  acc;
            system.debug('account created');
          }
          else {
            system.debug('Account without name cannot be created.');
          }
          return acc;

     }
} 
