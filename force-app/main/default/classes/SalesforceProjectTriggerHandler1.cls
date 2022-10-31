public  class SalesforceProjectTriggerHandler1 {
    public static void insertSFProject(){

        // use fori for inserting 3 records
        // use empty list to add values 
        // generate an instance of releted object in for

        List<salesforce_project__c> listSFP = new List<salesforce_project__c>();
        for (Integer i = 1; i < 4; i++) {
            salesforce_project__c eachSFP= new salesforce_project__c();
            eachSFP.project_name__c='Project Trigger ' +i;
            eachSFP.Status__c='Completed';
            listSFP.add(eachSFP);
        }
        insert listSFP;
    }
    public static void updateSFProject(){
        list<salesforce_project__c> listSFP=[SELECT id,project_name__c,Status__c 
                                             FROM salesforce_project__c 
                                             ORDER BY createddate desc limit 3 ];
        List<salesforce_project__c> emptyList  = new List<salesforce_project__c>();
        for (salesforce_project__c eachSFP : listSFP) {
            eachSFP.project_name__c='Project Update';
            emptyList.add(eachSFP);
        }
        update  emptyList;
    }
}
