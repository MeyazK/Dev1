public class SalesforceProjectTriggerHandler {
    public static void createDefaultTicket(List<salesforce_project__c> spTriggerNew) {
        try{
            List<Salesforce_Ticket__c> listST = new List<Salesforce_Ticket__c>();
            DefaulTicketInfo2__c dt=DefaulTicketInfo2__c.getOrgDefaults();

            for (salesforce_project__c eachSP : spTriggerNew) {
            Salesforce_Ticket__c st = new Salesforce_Ticket__c();
            st.Subject__c = dt.subject__c;
            st.description__c=dt.description__c;
            st.priority__c='Medium';
            st.Salesforce_Project__c = eachSP.id; // child objectin api adresini aldik -> Salesforce_Project__c
            listST.add(st);
           }
           if (!listST.isEmpty()) {
               insert listST;
           }
        } catch(Exception ex){
            system.debug('Exception ex: '+ ex);
            system.debug('contact admin');
            // call the code to  log error
            for(salesforce_project__c eachSP:spTriggerNew){
                 eachSP.addError('Error in creating default ticket. pLEASE CONTACT WITH ADMIN.');
            }

        }

        
 // Yeni bir salesforce ticket recourdu olusturunca releted kisminda cikmasini saglar.
    }
    public static void validateProjectCompletion(List<salesforce_project__c> spTriggerNew, 
                                                 List<salesforce_project__c> spTriggerOld,
                                                 Map<id, salesforce_project__c> spTriggerNewMap, 
                                                 Map<id, salesforce_project__c> spTriggerOldMap){

        // get project for which status is updated to 'Completed'
        // compare old and new status to get if project changed to complated
        set<id> setProjectCompletedIds = new set<id>();
        for (salesforce_project__c eachSP : spTriggerNew) {
            if(spTriggerOldMap.get(eachSP.id).Status__c != eachSP.Status__c
            && eachSP.Status__c == 'Completed'){
                setProjectCompletedIds.add(eachSP.Id);
            }
        }

        // get all tickets which are not complated
        List<Salesforce_Ticket__c> listST = [SELECT id, name, status__c 
                                             FROM Salesforce_Ticket__c
                                             WHERE Salesforce_Project__c in :setProjectCompletedIds 
                                             AND status__c !='Completed'];
         if (!listSt.isEmpty()) {
            for (Salesforce_Ticket__c eachST : listST) {
                Salesforce_Project__c sp = spTriggerNewMap.get(eachST.Salesforce_Project__c);
                sp.addError('Cannot complete project because all its tickets are not completed.');
           }
         }
    }
    @future
    public static void updateProjectDescription(Set<Id> setIds){
        system.debug('Called from the future');
        system.debug('set of ids'+setIds);
        //fetch project records of given setIds.
        List<Salesforce_Project__c> listSP = [select id, description__c from Salesforce_Project__c where id in :setIds];

        //for each loop and update description of fetched projects
        for (salesforce_project__c sp : listSP) {
            sp.Description__c += '. updated from future it is.';
        }
        //update dml
        update listSP;
    }
    public static void spCompletedProject(List<salesforce_project__c> spTriggerNew, 
                                          Map<id, salesforce_project__c> spTriggerOldMap) {
                                            // trigger sp de tetiklendigi icin sp de yazdik

        set<id> spIds = new set<id>();

        for (salesforce_project__c spNew : spTriggerNew) {
            salesforce_project__c spOld = spTriggerOldMap.get(spNew.Id);
            if (spNew.Status__c == 'Completed' && spOld.Status__c != 'Completed') { // eskiden completed olanlara girme
                spIds.add(spNew.Id);
            }
        }

        system.debug('sp Ids where status is completed -> ' + spIds);
        //call future method and pass this spIds.
        if (!spIds.isEmpty()) {
            updateTicketStatusCompleted(spIds);
        }
        
    }

    @future
    private static void updateTicketStatusCompleted(set<id> spIds) {
        List<Salesforce_Ticket__c> listST = [select id, status__c from 
                                Salesforce_Ticket__c where Status__c != 'Completed'
                                and Salesforce_Project__c in :spIds];
        for (salesforce_ticket__c st : listST) {
            st.Status__c = 'Completed';
        }
        update listST;
    }

}
/*
SP' de status eger complated olarak degistirilmisse yani update edilmis ise, 
ilgili ticket statusunu veya statuslerini decomplated yap.
Bunu yapmak icin id kullandik ve bunun icin set kurduk.
spCompletedProject bu method ile  @future updateTicketStatusCompleted  metodlari birbiri ile baglantili

*/
