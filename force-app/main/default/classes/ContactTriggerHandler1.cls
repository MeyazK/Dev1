public class ContactTriggerHandler1 {
    public static void contactUpdateValidation1(List<contact> contTriggerNew,  
                                                List<contact> contTriggerOld,
                                                Map<id, contact> contTriggerNewMap, 
                                                Map<id, contact> contTriggerOldMap) {
            //prevent to update contact record IF leadSource is PartnerReferral
            for (contact eachCnt : contTriggerNew) {
                Contact oldContact = contTriggerOldMap.get(eachCnt.id);
                if (oldContact.LeadSource == 'Partner Referral') {
                    eachCnt.addError('Cannot update \'Partner Referral\' contact.');
                    
                }
                //if(contTriggerOldMap.get(eachCnt.id).leadsource == 'Partner Referral'){}

                
            }
    }
    public static void contactUpdateValidation2(List<contact> contTriggerNew, 
                                                List<contact> contTriggerOld,
                                                Map<id, contact> contTriggerNewMap, 
                                                Map<id, contact> contTriggerOldMap) {

        for (Contact eachContact : contTriggerNew) {
            if (eachContact.LeadSource != contTriggerOldMap.get(eachContact.id).LeadSource) {
                string customValidation= system.label.ContactValidation2;  
                // hatirlamzsan bunu , google'de arattir custom label apex method diye 
                eachContact.LeadSource.addError('CANNOT UPDATE LEADSOURCE!!! PLEASE USER.');
            }
        }
    }
    public static void updateAccNumberOfContacts(list<contact> contTriggerNew,
                                                 list<contact> contTriggerOld){
         set<id> accountIds = new set<id>();

         if (Trigger.isInsert || Trigger.isUpdate || Trigger.isUndelete) {
            for (Contact eachCont : contTriggerNew) {
                accountIds.add(eachCont.Accountid);
            }
            
         }
         if (trigger.isUpdate  || trigger.isDelete) {
            for (Contact eachCont : contTriggerOld) {
                accountIds.add(eachCont.Accountid);
            }
            
         }
         if (!accountIds.isEmpty()) {
            // all accounts in accountIds , and all its contacts using inner query
            List<account> listAcc = [SELECT id, number_of_contacts__c,
                                    (SELECT id from contacts) 
                                     FROM account where id in:accountIds];
            List<account> updateAcc = new list<account>();
            for (Account eachAcc : listAcc) {
                eachAcc.number_of_contacts__c = eachAcc.contacts.size();
                updateAcc.add(eachAcc);
            }
            update updateAcc;
         }

    }
 }
