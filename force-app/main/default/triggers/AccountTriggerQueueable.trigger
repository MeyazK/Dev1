trigger AccountQueueableExample on Account (before insert, before update, after insert, after update) {
    system.debug('====trigger start======');
    if (trigger.isBefore ) {
        AccountTriggerHandler.updateDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
    if (Trigger.isAfter && Trigger.isInsert) {

        AccountQueueableExample aq = new AccountQueueableExample(Trigger.new);
        system.enqueueJob(aq);
    }
    if (Trigger.isAfter && Trigger.isUpdate) {
        AccountTriggerHandler.updateVIPforAllContacts(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
    
    system.debug('====trigger end====');