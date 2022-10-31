trigger SalesforceProjectTrigger1 on salesforce_project__c (before insert,before update) {
     if (trigger.isBefore) {
        if (trigger.isInsert) {
            for (salesforce_project__c eachSFp : trigger.new) {
                System.debug('SF project name -->>'+eachSFp.project_name__c +' ---,id is '+eachSFp.id);
            }
        }
        if (trigger.isUpdate) {
            for (salesforce_project__c eachSFp1: trigger.new) {
                System.debug('SF project name -->>'+eachSFp1.project_name__c +' ---,id is '+eachSFp1.id);
            }
            for (salesforce_project__c eachSFp2  : trigger.old) {
                System.debug('SF project name -->>'+eachSFp2.project_name__c +' ---,id is '+eachSFp2.id);
            }
        }
     }
}