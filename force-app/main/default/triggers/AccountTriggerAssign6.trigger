trigger AccountTriggerAssign6 on account (after insert , after update) {
    if (trigger.isAfter && trigger.isInsert) {
        AccountTriggerAssignHandler.insertContact(Trigger.New);
    }
    if (trigger.isAfter && trigger.isUpdate) {
        AccountTriggerAssignHandler.updateOpps(Trigger.New);
        AccountTriggerAssignHandler.updateContacts(trigger.New, trigger.Old, trigger.NewMap, trigger.OldMap);
    }
    if (trigger.isBefore&& trigger.isUpdate) {
        AccountTriggerAssignHandler.accountError(trigger.New, trigger.Old,trigger.oldMap);
    }

}