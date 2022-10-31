// Assignment 5-Q2.1
trigger LeadTrigger on Lead ( before insert ) {
    if (trigger.isBefore && trigger.isInsert) {
        for (Lead eachLead : trigger.new) {  // trigger.new -->> olusturlmus bir listenin son halini ifade ediyor gibi dusunebilir.
            if (eachLead.LeadSource=='Web') {  // for olusturduktan sonra bu sekilde filed'lari tek tek cagirabiliriz.
                system.debug('Rating should be Cold');
            } else {
                system.debug('Rating should be hot.');
            }
        }        
    }
}




