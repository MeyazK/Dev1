trigger AccountContactFutureTrigger on contact (after insert, after update) {

      set<Id> setIds=new set<id>();
       if(trigger.isAfter){
              if(Trigger.isInsert || Trigger.isUndelete){
                for(contact c : Trigger.new){
                  if(c.AccountId != null){
                    setIds.add(c.AccountId);
                  }
                }
              }
              if(Trigger.isUpdate){
                for (contact newC : Trigger.new) {
                      contact oldC= Trigger.oldMap.get(newC.Id);
                    if(newc.AccountId != oldC.AccountId && newC.AccountId != null){
                      setIds.add(newC.AccountId);
                    }
                }
              }
              if(Trigger.isDelete){
                for (contact c : Trigger.old) {
                  if(c.AccountId != null){
                    setIds.add(c.AccountId);
                  }
                }
              }
      }
      if (!setIds.isEmpty()) {

              AccountContactFutureHandler.updateNumberContacts(setIds);
       }
}