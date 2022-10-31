trigger salesforceTicketTriggerHandler17 on salesforce_ticket__c (before insert,before update ) {
    if (trigger.isBefore) {
        for (salesforce_ticket__c eachSt : trigger.new) {
            boolean updateDesc=false;
            if (trigger.isInsert && eachSt.priority__c=='High') {
                updateDesc=true;
            }
            salesforce_ticket__c oldMapC=Trigger.OldMap.get(eachSt.id);
            if(trigger.isUpdate && eachSt.priority__c !=oldMapC.priority__c  && eachSt.priority__c=='High'){
                updateDesc=true;
            }
            if (updateDesc) {
                eachSt.Description__c='The ticket priority is HIGH. Work on it ASAP';
            }

        }
    }

}