public  class AccountTriggerAssignHandler {
    public static void  insertContact(List<Account> accTriggerNew){
        list<contact> listCont=new List<contact>();
        for (account eachAcc : accTriggerNew) {
            contact cont=new contact();
            cont.Accountid=eachAcc.Id;
            eachAcc.name=cont.lastname;
            cont.phone=eachAcc.phone;
            listCont.add(cont);
        }
        insert listCont;
    }
    public static void updateOpps(list<account> accTriggerNew){
        List<opportunity> listOpp = [SELECT id,name,stagename , accountid 
                                     FROM opportunity where stagename != 'Closed Won' and accountId in :accTriggerNew];
        list<opportunity> updateOpps =new list<opportunity>();
        for(opportunity opp: listOpp){
              opp.stagename='Closed Won';
              updateOpps.add(opp);
        }
        update updateOpps;

    }
    public static void updateContacts(list<Account> triggerNew,
                                       list<account>triggerOld,
                                       Map<Id,account> triggerNewMap,
                                       Map<Id,account> triggerOldMap){

        List<contact>  updContList =new list<contact>();
        Set<id> accIds = new Set<id>();
        for (account acc : triggerNew) {
           if (acc.phone!=triggerOldMap.get(ACC.ID).phone) {
               accIds.add(acc.id);
           }
           List<contact> listCont =[SELECT id,name , otherphone , mobilephone , accountid 
                                   FROM contact where accountid in :trigger.new];
        for (contact cont : listCont) {
            cont.otherphone=triggerOldMap.get(acc.id).phone;
            cont.mobilephone=triggerNewMap.get(acc.id).phone;
            updContList.add(cont);
         }
         update updContList;
           
       }   

    } 
    public static void accountError(List<Account> triggerNew, List<Account> triggerOld, Map<Id,Account> triggerOldMap){
        for (account eachAcc : triggerNew) {
            if (eachAcc.annualRevenue != triggerOldMap.get(eachAcc.id).annualRevenue) {
                if (eachAcc.annualRevenue < triggerOldMap.get(eachAcc.id).annualRevenue || eachAcc.annualRevenue == null) {
                    eachAcc.addError('Annual Revenue for an account cannot be reduced.');
                }
            }
        }
    }


}