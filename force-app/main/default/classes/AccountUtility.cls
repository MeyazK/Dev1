// trailhead sorulari ayri ayri
public class AccountUtility {
    public static void viewAnnualRevenue(){
        list<account> accountsList=[SELECT name,AnnualRevenue
                                    FROM Account];
        for (account  result : accountsList) {
             string eachName= result.name;
             Decimal eachAnnualRevenue= result.AnnualRevenue;

             string acctRev= 'name: ' +eachName+' annual revenue: '+eachAnnualRevenue;
             SYSTEM.DEBUG(acctRev);

        }

    }
    public static void newListedProperties(){
        list<Property__c> newPropList=new list<Property__c>(); 
        newPropList =[SELECT Id, Name, Broker__r.email__c, Days_On_Market__c 
                      FROM Property__c 
                      WHERE Days_On_Market__c <=30];
        for(Property__c p : newPropList){
            string propEmail=p.name+':'+p.Broker__r.email__c;
            system.debug(propEmail);
            
        }
        
    }

}
