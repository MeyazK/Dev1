trigger CaseTrigger7 on case (after insert) {
       //after insert because we need ID and we are doing DML
       if (trigger.isAfter && trigger.isInsert) {
        //Call method here
        CaseTriggerHandler7.createChildCase(Trigger.New);
    }
}