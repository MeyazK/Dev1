trigger PaymentTrigger on PaymentAssigment__c (after insert, after update , after delete) {
    CustomerTriggerHandler.updateAuto(Trigger.New,Trigger.Old);

}