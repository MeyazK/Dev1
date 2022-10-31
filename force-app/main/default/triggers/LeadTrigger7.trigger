trigger LeadTrigger7 on lead (before insert, before update) {
    if (trigger.isBefore) {
        LeadTriggerHandler7.checkClosedLostReason(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }

}