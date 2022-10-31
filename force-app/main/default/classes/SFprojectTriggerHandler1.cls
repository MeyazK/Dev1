/*
               ilk method
* method olusturma triggerlist ve mapler ile sp objectini parameterize ederek
* future islemlerinde id kullanildigi icin bos set id olusturma 
* for dongusu triggernew'li ve sp object'li
* if condition completed olanlar ve eskiden completed olmayanlar
*  sete ekle 
* system.debug (id)
*future methodunu bagla

              future methodu
*  @future 
* method  set<id> setName ile parameterize ederek olusturma
* SOQL list olusturma st object'i icin ve completed olmayan lari ve olusturulan set'i sp in: ile cagir
* for dongusu list<st> ile birliklte
* listST yi completed yap
* update etme
*/
public  class SFprojectTriggerHandler1 {
    public static void spcomplatedp1(List<salesforce_project__c> triggerNew,
                                     List<salesforce_project__c> triggerOld,
                                     Map<id, salesforce_project__c> triggerNewMap,
                                     Map<id, salesforce_project__c> triggerOldMap){

    Set<Id> spIds =new set<id>();
     for (salesforce_project__c eachSP : triggerNew) {
        if (eachSP.status__C=='Completed' && triggerOldMap.get(eachSP.id).status__C != 'Completed') {
            spIds.add(eachSP.id);

        }
        system.debug('IDs of fileds that is updated to completed at status and is not updated completed at status previously '+spIds);
        updateTicketComleted(spIds);

     }
    }

    @future
    private static void updateTicketComleted(Set<Id> spIds){
        List<salesforce_ticket__c> listST=[SELECT id, status__c from salesforce_ticket__c where status__c !='Completed'
                                                      AND salesforce_project__c In:spIds]; 
        for (salesforce_ticket__c st : listST) {
            st.status__c='Completed';
        }
        update listST;
    }
}