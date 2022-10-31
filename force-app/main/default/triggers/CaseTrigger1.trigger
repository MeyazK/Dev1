trigger CaseTrigger1 on case (before insert,after insert , before update , after update, before delete, after delete) {
    if (trigger.isBefore ) {
        
        if (trigger.isInsert) {
            system.debug('Before Insert Case');
        }
        if (trigger.isUpdate) {
            system.debug('Before Update Case');
        }
        if (trigger.isDelete) {
            system.debug('Before Delete Case');
        }
    }
    if (trigger.isAfter ) {
        
        if (trigger.isInsert) {
            system.debug('After Insert Case');
        }
        if (trigger.isUpdate) {
            system.debug('After Update Case');
        }
        if (trigger.isDelete) {
            system.debug('After Delete Case');
        }
    }
}