
// short videolardaki 20.2 -- 20.3 sorulari

public  class LeadTriggerHandler {
   public static void updateClosedLostDate(list<lead> LtriggerNew,
                                           list<lead> LtriggerOld,
                                           Map<id, lead> LTriggerNewMap ,
                                           Map<Id,lead> LTriggerOldMap ){
      
        boolean wantUpdateDate=false;
         for (lead eachLead : LtriggerNew) {
            // we can use switch on 
            // dublicate yapmamak icin boolean kullanacagiz
            
            if (LtriggerOld==null) {
                wantUpdateDate=true;
            }
            if (LtriggerOld !=null) {
                if (eachLead.status != LTriggerOldMap.get(eachLead.id).status) {
                    wantUpdateDate=true;
                }
                
            }
            if (wantUpdateDate) {
                switch on eachLead.status {
                    when  'Open - Not Contacted'{
                        eachLead.Created_Date__c=Datetime.now();
                    }
                    when  'Working - Contacted'{
                        eachLead.Contacted_Date__c=Datetime.now();
                    }
                    when  'Closed - Converted '{
                        eachLead.Closed_Won_Date__c=Datetime.now();
                    }
                    when  'Closed - Not Converted'{
                        eachLead.Closed_Lost_Date__c=Datetime.now();
                    }
                    when null {
                        eachLead.Created_Date__c=Datetime.now();
                    }
                    when  '' {
                        eachLead.Created_Date__c=Datetime.now();
                    }
                }
            }
        }
   }
}
