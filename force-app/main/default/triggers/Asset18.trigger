trigger Asset18 on asset (before insert,before update) {
    AssetTriggerHandler18.updateDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);

}