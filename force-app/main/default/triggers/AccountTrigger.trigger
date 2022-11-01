/*
trigger AccountTrigger on account (before insert,after insert) {
    system.debug('==trigger start==');
     
    if(trigger.isBefore){
        system.debug('before insert account trigger called. ');
    }
    if (trigger.isAfter) {
        system.debug('after insert sccount trigger called');
    }
    system.debug('==trigger end ==');
}
*/

/*
trigger AccountTrigger on account (before insert,after update) {
    system.debug('====trigger start======');

    
    if (trigger.isInsert) {
        system.debug('before insert account trigger called.');
    }
    if (trigger.isUpdate) {
        system.debug('after update account trigger called');
    }
    
    system.debug('====trigger end====');

} 
*/
/*
trigger AccountTrigger on account (before insert,before update,after insert,after update) {

    system.debug('====trigger start======');

    if (trigger.isBefore && trigger.isInsert) {
        system.debug('before insert account trigger called.');
    }
    if (trigger.isAfter && trigger.isInsert) {
        system.debug('after insert account trigger called.');
    }
    if (trigger.isBefore && trigger.isUpdate) {
        SYSTEM.DEBUG('before update account trigger called.');
    }
    if (trigger.isAfter && trigger.isUpdate) {
        SYSTEM.DEBUG('after update account trigger called.');
    }
    system.debug('====trigger end====');

}
*/

/*
trigger AccountTrigger on account (before insert,before update,after insert,after update) {
    system.debug('====trigger start======');
    if (trigger.isBefore) {
        system.debug('before (insert or update) trigger called');
        if (trigger.isInsert) {
            system.debug('before insert trigger called');
        }
        if (trigger.isUpdate) {
            system.debug(' before update trigger called');
        }
    }
    if (trigger.isAfter) {
        system.debug('after (insert or update) trigger called');
        if (trigger.isInsert) {
            system.debug('after insert trigger called');
        }
        if (trigger.isUpdate) {
            system.debug(' after update trigger called');
        }
    }
    system.debug('====trigger end====');
 

}
*/
/*

trigger AccountTrigger on account (before insert,before update,after insert,after update) {
    system.debug('====trigger start======');

   //  account acc=trigger.new;  --->> wrong way 
   // trigger.new   ALWAYS gives LIst<sObject>. ALWAYS .even if we updating/inserting just one record.
   // WHY ? trigger runs only once when we process multiple records at a time.

    List<ACCOUNT> newAccount = trigger.new;
    if (trigger.isBefore && trigger.isUpdate) {
        system.debug('beforetrigger trigger.new==>>'+newAccount);
        system.debug('number of records --->>> '+newAccount.size());
        for (account acc : newAccount) {
            system.debug('acc id ==>> '+acc.Id+' +acc name ===>>>'+acc.Name);
        }
    }
    if (trigger.isAfter && trigger.isUpdate) {
        system.debug('After trigger trigger.new==>>'+newAccount);
        system.debug('number of records --->>> '+newAccount.size());
        for (account acc : newAccount) {
            system.debug('acc id ==>> '+acc.Id+' +acc name ===>>>'+acc.Name);
        }
    }

    system.debug('====trigger end====');

}
*/


/*
trigger AccountTrigger on account (before insert,before update,after insert,after update) {
    system.debug('====trigger start======');
    if (trigger.isBefore && trigger.isInsert) {
        system.debug('before insert account trigger.old==>>>.'+trigger.old);

    }
    if (trigger.isAfter && trigger.isInsert) {
         system.debug('after insert account trigger.old.==>>'+trigger.old);
    }
    if (trigger.isBefore && trigger.isUpdate) {
        system.debug('before update account trigger.old==>>>.'+trigger.old);

    }
    if (trigger.isAfter && trigger.isUpdate) {
         system.debug('after update account trigger.old.==>>'+trigger.old);
    }
     system.debug('====trigger end====');
     // update ettik ve eski kaydi gosterdi cunku trigger.old dedigimiz icin eski kaydi aldik.
}
*/
/*
trigger AccountTrigger on account (before insert,before update,after insert,after update) {
    system.debug('====trigger start======');
    if (trigger.isAfter && trigger.isUpdate) {
        system.debug('after update account trigger.old.==>>'+trigger.old);
        list<account> oldAccount=trigger.old;
        for (account eachAccOld : oldAccount) {
            system.debug('old id==>>'+eachAccOld.id+'old name==>>'+eachAccOld.name);
        }
        list<account> newAccounts=trigger.new;
        for (account eachAccnew : newAccounts) {
            system.debug('new id==>>'+eachAccnew.id+'new name==>>'+eachAccnew.name);
        }
   }
}
*/
/*
trigger AccountTrigger on account (before insert,before update,after insert,after update) {
    system.debug('====trigger start======');

    Map<id, account> newMapAcc = trigger.newMap;
    Map<id, account> oldMapAcc = trigger.oldMap;
    
    if (trigger.isBefore && trigger.isInsert) {
        system.debug('before insert account trigger.oldMap==>>>.'+oldMapAcc);//NULL  
        system.debug('before insert account trigger.newMap==>>>.'+newMapAcc);//n

    }
    if (trigger.isAfter && trigger.isInsert) {
         system.debug('after insert account trigger.oldMap==>>'+oldMapAcc);
         system.debug('after insert account trigger.newMap.==>>'+newMapAcc);
    }
    if (trigger.isBefore && trigger.isUpdate) {
        system.debug('before update account trigger.oldMap=>>>.'+oldMapAcc);
        system.debug('before update account trigger.newMap=>>>.'+newMapAcc);

    }
    if (trigger.isAfter && trigger.isUpdate) {
         system.debug('after update account trigger.oldMap==>>'+oldMapAcc);
         system.debug('after update account trigger.newMap==>>'+newMapAcc);
    }
}
*/

/*
trigger AccountTrigger on account (before insert,before update,after insert,after update) {
    system.debug('====trigger start======');

    Map<id, account> newMapAcc = trigger.newMap;
    Map<id, account> oldMapAcc = trigger.oldMap;
    
    if (trigger.isBefore && trigger.isInsert) {
        // get keySet from map

        Set<id> accIds = newMapAcc.keySet();

        for (id eachId : accIds) {
            system.debug('eachId==>>>'+eachId);
            // get value from the key in newMap and oldMap

            Account newAccount=newMapAcc.get(eachId); /// it bring account record id
            system.debug('new account name ==>>'+newAccount.Name);


            
            system.debug('oldaccount name ==>>'+oldAccount.Name);
        }
    }
}
*/
/*
trigger AccountTrigger on account (before insert,before update,after insert,after update){
   system.debug('====trigger start======');
    //key, value
    if (trigger.isAfter && trigger.isUpdate) {

        integer countWSChanged = 0;

        Map<id, account> newMapAcc = trigger.newmap;
        Map<id, account> oldMapAcc = trigger.oldMap;
        set<id> accIds = newMapAcc.keySet();

        for (Id eachId : accIds) {
            //eachId is updated Account's ID (if any field is updated.)
            //we want to check OLD Account's webiste != New Account's website
            account oldAcc = oldMapAcc.get(eachId);
            string oldWebSite = oldAcc.Website;

            account newAcc = newMapAcc.get(eachId);
            string newWebSite = newAcc.Website;
            
            if (oldWebSite != newWebsite) {
                countWSChanged++;
                //For Account accName, website is changed to newWebsite
                system.debug('For account ' + newAcc.name + ', website is change to ' + newWebSite);
            }
        }
        system.debug('total # account where website is changed ==> ' + countWSChanged);
    }
    system.debug('====trigger end====');

}

*/
/*
trigger AccountTrigger on account (before insert,before update,after insert,after update){
    system.debug('====trigger start======');

    if(trigger.isBefore){
        for(Account eachAcc : Trigger.new){
            if(trigger.isInsert){
                if(eachAcc.Active__c == 'Yes'){
                    eachAcc.Description = 'Account is now Active. Enjoy buddy!';
                }
            }

            if(trigger.isUpdate){
                if(eachAcc.Active__c == 'Yes' && 
                trigger.oldMap.get(eachAcc.id).Active__c != trigger.newMap.get(eachAcc.id).Active__c){
                    eachAcc.Description = 'Account is now Active. Enjoy buddy!';
                   }
            }
        }
    }
    system.debug('====trigger end====');

    // Active butonunun active'e getirilmesi ve aktif tusunun eskisi ile yenisinin ayni olmamasi durumnda calisan bir trigger.isAfter
    // Yani active hayir iken onu tikleyip sonra da baska filedlarda bir degisklik yaptigimizda, description bolumu 
    // bu sekilde degismektedir.
}



// ders
trigger AccountTrigger on account (before insert,before update,after insert,after update) {
    system.debug('====trigger start======');
    if (trigger.isBefore) {
        AccountTriggerHandler.updateDescription(Trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
}

*/
trigger AccountTrigger on account (before insert,before update,after insert,after update) {
    TriggerSwitch__c accountSwitch =TriggerSwitch__c.getInstance('account');
    if (accountSwitch.switch__c==false) {
        return;
    }


    system.debug('====trigger start======');
    if (trigger.isBefore) {
        AccountTriggerHandler.updateDescription(Trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
    }
    if (Trigger.isAfter && trigger.isUpdate) {
        AccountTriggerHandler.updateVIPforAllContacts(Trigger.new, trigger.old, trigger.newMap, trigger.oldMap);
    }
}