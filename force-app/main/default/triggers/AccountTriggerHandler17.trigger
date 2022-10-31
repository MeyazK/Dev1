trigger AccountTriggerHandler17 on account (after insert) {
    AccountTriggerHandler17.insertContacts(trigger.New, trigger.Old);

}