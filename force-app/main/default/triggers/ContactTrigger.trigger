trigger ContactTrigger on Contact (before insert, after insert, before update, after update, after delete, after undelete) {
    if (Trigger.isBefore && Trigger.isUpdate) {
        //call validation methods.
        ContactTriggerHandler1.contactUpdateValidation1(Trigger.New, Trigger.Old,  Trigger.NewMap, Trigger.OldMap);
        ContactTriggerHandler1.contactUpdateValidation2(Trigger.New, Trigger.Old,  Trigger.NewMap, Trigger.OldMap);
  
    }
    if (Trigger.isAfter) {
        //call handler method.
        ContactTriggerHandler1.updateAccNumberOfContacts(Trigger.New, Trigger.Old);
    }
}