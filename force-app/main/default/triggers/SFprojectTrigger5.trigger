trigger SFprojectTrigger5 on salesforce_project__c (before insert, after insert, before update, after update) {
    if (trigger.isAfter && trigger.isUpdate) {
        SFprojectTriggerHandler1.spcomplatedp1(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }

}