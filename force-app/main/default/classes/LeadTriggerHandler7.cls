public  class LeadTriggerHandler7 {

/*
Soru1: -->> Create  one text field on Lead object :Closed Lost Reason (org da yapildi bu )
if lead status is changed to 'Closed-Not Converted' ,
Closed Lost Reason should be mandatory-->> (validation).

Ip ucu : before kullanilmali , insert ve update ,id'ye gerek yok, object--> Lead, dml'e gerek  yok
*/

    public static void checkClosedLostReason(List<lead> lTriggerNew, 
                                             List<lead> lTriggerOld,
                                             Map<id, lead> lTriggerNewMap, 
                                             Map<id, lead> lTriggerOldMap){

        for (lead l : lTriggerNew) {
            // if it is insert and status is closed lost
              //and reason is empty
              // then validate

            //1.YOL

              /*
            if (lTriggerOld==null){// insert durumu
                if (l.status=='Closed - Not Converted' && l.Closed_Lost_Reason__c==null) {
                    l.Closed_Lost_Reason__c.addError('Tell us why not converted,now'); 
                    //l.addError('something'); seklinde de yapabilirdik ama o zaman hatayi altta verirdi.
                    // Uste yaptigimiz gibi yaptigimizda ise ahtayi o filedin altinda verir.
                }
            }
            if (lTriggerOld !=null) {
                if (l.status !=lTriggerOldMap.get(l.id).status ) {
                    if (l.status=='Closed - Not Converted' && l.Closed_Lost_Reason__c==null) {
                        l.Closed_Lost_Reason__c.addError('Tell us why not converted,now'); 
                    }
                }
            }
            */

            // 2. YOL

            
            if (trigger.isInsert || (trigger.isUpdate && l.status !=lTriggerOldMap.get(l.id).status )) {
                if (l.status=='Closed - Not Converted' && l.Closed_Lost_Reason__c==null) {
                    l.Closed_Lost_Reason__c.addError('Tell us why not converted,now'); 
                }
            }
            // if it is update and status changed
               // and status is closed lost
               // and reason is empty
               // then validate
        }
    }

}
