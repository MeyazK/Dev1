trigger LeadTrigger1 on lead (before insert , before update ) {
   LeadTriggerHandler.updateClosedLostDate(trigger.New, trigger.Old, Trigger.NewMap, Trigger.OldMap);
}