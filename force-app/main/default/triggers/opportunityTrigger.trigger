/*
// Assignment 5-Q2.2 
//benim cozum
trigger opportunityTrigger on opportunity (before update,after update) {
    if (trigger.isBefore && trigger.isUpdate) {
        for (opportunity eachOpp : trigger.old) {
            system.debug('Opportunity name is '+eachOpp.name +' and amount of Opp'+eachOpp.amount);
        }
    }
    if (trigger.isAfter && trigger.isUpdate) {
        for (opportunity eachOpp1 : trigger.new) {
            system.debug('Opportunity name is '+eachOpp1.name +' and amount of Opp '+eachOpp1.amount);
        }
        
    }
}


// Assignment 5-Q2.2

// opp name, amount fields -->> for each
// new - old  ---- >>> map
// before update , after update -->> if 
trigger opportunityTrigger on Opportunity (before Update,after update) {
    if(Trigger.isBefore && Trigger.isUpdate){
        Map<Id, Opportunity> oppOldRecsMap = Trigger.oldMap;
        for(Opportunity opp : Trigger.new){
            System.debug('New Opportunity Name  ' + opp.Name);
            System.debug('Old Opportunity Name  ' + oppOldRecsMap.get(opp.Id).Name);
            System.debug('New Opportunity Amount ' + opp.Amount);
            System.debug('Old Opportunity Amount ' +  oppOldRecsMap.get(opp.Id).Amount);
        }
    }
}

*/
/*
// Assignment 5-Q2.4

// stagename -->>> for 
// update --> .after update --- >>> map --> oldMap
// description , opportunity name  --> print

trigger opportunityTrigger on opportunity (before update){
    if (trigger.isBefore && trigger.isUpdate) {
        Map<id, Opportunity> oppMap = trigger.oldMap;
        for (opportunity eachOpp : trigger.new) {
            if (eachOpp.stagename != oppMap.get(eachOpp.id).stagename) {
                system.debug( eachOpp.description + eachOpp.Name);
            }
            
        }
    }
}
*/
