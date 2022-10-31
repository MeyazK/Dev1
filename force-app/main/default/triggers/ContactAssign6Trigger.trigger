trigger ContactAssign6Trigger on contact (before insert) {
      if (trigger.isBefore && trigger.isInsert) {
         ContactTriggerAsign6Handler.updateContactOtherPhone(trigger.New);
      }
}