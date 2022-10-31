/*
// Assignment 5-Q1.1
trigger CaseTrigger on Case (before insert,after insert,before update,after update) {
    system.debug('We are in the triggers');
    if(trigger.isAfter){
        system.debug('We are in the after triggers');
        if (trigger.isInsert) {
            system.debug('We are in the after-Insert triggers');
            for (Case each : trigger.new) {
                system.debug('Case number  '+each.CaseNumber+' was created with id '+each.id + 
                ' on '+each.CreatedDate+'.');
            }
        }
        if (trigger.isUpdate) {
            system.debug('We are in the after-Update triggers');
            for (Case each : trigger.new) {
                system.debug('Case number  '+each.CaseNumber+' was created with id '+each.id + 
                ' on '+each.CreatedDate+'.');
            }
        }

    }
    if (trigger.isBefore) {
        system.debug('We are in the before triggers');
        if (trigger.isInsert) {
            system.debug('We are in the before-Insert triggers');
        }
        if (trigger.isUpdate) {
            system.debug('We are in the before-Update triggers');
            for (Case each : trigger.new) {
                system.debug('Case number  '+each.CaseNumber+' was created with id '+each.id + 
                ' on '+each.CreatedDate+'.');
            }// Assignmnet 5-Q1.2
            // ayni for dongusunu 3 yerde yaptik cunku soruda bizden id si null olmayan her yerde yazdir dedi
            // ve id si null olarak cikan tek yer ; BEFORE INSERT 'dur.
            // Ve tek tek field istendiginde , yapmamiz gereken sey bir for dongusu olmalidir genelde 
            // ve goruldegu gibi for'u bu sekilde dizayn ettikten sonra , for variable name' i yani
            // buradaki each 'i istenilen field'in API name'i ile birlestirerek cekebiliyoruz.
        }
    }

}
*/
/*

// Assignment 5-Q2.3

// origin field  --> for each
// whenever change -->> map
// change ---> update
trigger CaseTrigger on Case (before update) {

    if (trigger.isBefore && trigger.isUpdate) {
        Map<id, case> caseMap =Trigger.oldMap;
        for (case eachCase : trigger.new) {
            if (eachCase.origin!=  CaseMap.get(eachCase.id).origin) {
                System.debug('Case origin is changed for '+eachCase.caseNumber);
            }
               
        }
    }

}
*/

/*
//  Assignment 5-Q3.1
// isBefore yapmak gerek insert durumlarinda
trigger CaseTrigger on Case (before insert) {
    if (trigger.isBefore && trigger.isInsert) {
    for (case eachCase : trigger.new) {
        if(eachCase.origin=='Email'){
            eachCase.status='New';
            eachCase.priority='Medium';

        }
    }
    }
}
// Bu sorudaki amac: Yeni bir kayit oldugunda ve origin email oldugunda status new ve priority medium otamatikman olur.

*/

