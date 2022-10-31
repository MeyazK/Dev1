public  class CustomerTriggerHandler {
    public static void insertPayment(list<Customer__c> newtrigger){ // handler oldugu icin parametirize yaptik
        list<PaymentAssigment__c> listPayment=new list<PaymentAssigment__c>();
        for (Customer__c eachCust : newtrigger) {
            PaymentAssigment__c pOnline=new PaymentAssigment__c();
            pOnline.amount__c =0.1;
            pOnline.mode__c='Online';
            pOnline.CustomerAssignments__c=eachCust.id; // lookup apisi


            listPayment.add(pOnline);

            PaymentAssigment__c pCrypto=new PaymentAssigment__c();
            pCrypto.amount__c=1;
            pCrypto.mode__c='Crypto';
            pCrypto.CustomerAssignments__c=eachCust.id;

            listPayment.add(pCrypto);

        }
        if (!listPayment.isEmpty()) {
            insert listPayment; 
        }
        
    }
    public static void updateRelatedPayments(List<Customer__c> triggerOld){
        Set<Id> active =new Set<Id>();
        Set<id> inactive=new Set<Id>();
        for(Customer__c c: triggerOld){
            if(c.active__c ==true){
                active.add(c.id);
            }else{
                inactive.add(c.id);
            }
        }
        if(!active.isEmpty()){
            List<PaymentAssigment__c> payments1 = [SELECT id 
                                                   FROM PaymentAssigment__c 
                                                   WHERE CustomerAssignments__c in :active];
            if(!payments1.isEmpty())
            delete payments1;
        }
        if(!Inactive.isEmpty()){
            List<PaymentAssigment__c> onlines=[SELECT id 
                                               FROM PaymentAssigment__c 
                                               WHERE CustomerAssignments__c in :inactive 
                                               AND Mode__c='Online']; // LOOKUP api
            if(!onlines.isEmpty())
            delete onlines;
        }
    }
    // after trigger.isAfter -->> trigger.isInsert || trigger.isUpdate || trigger.isDelete
    //insert a field called Total Amount
    // 
    public static void updateAuto( list<PaymentAssigment__c> contTriggerNew, 
                                   list<PaymentAssigment__c> contTriggerOld){

        Set<id> setCust = new Set<id>();
        if (trigger.isAfter) {
            if (trigger.isUpdate || trigger.isDelete) {
                for (PaymentAssigment__c eachP1 : contTriggerOld) {
                    setCust.add(eachP1.CustomerAssignments__c);
                }
            }
            if (trigger.isUpdate || trigger.isInsert) {
                for (PaymentAssigment__c eachP2 : contTriggerNew) {
                    setCust.add(eachP2.CustomerAssignments__c);
                }
            }
        }

         if (!setCust.isEmpty()) {
            list<Customer__c>  C1 = [SELECT ID,Total_Amount__c,
                                    (SELECT ID,amount__c  FROM PaymentAssigments__r)
                                    FROM Customer__c
                                    WHERE id IN:setCust];
            List<Customer__c> listCst = new List<Customer__c>();

            for (Customer__c eachC : C1) {
                decimal totalA=0;
                for (PaymentAssigment__c eachP3 : eachC.PaymentAssigments__r) {
                    totalA += eachP3.amount__c;

                }
                eachC.Total_Amount__c =totalA;
                listCst.add(eachC);
            }
            if (!listCst.isEmpty()) {
                update listCst;
            }
         }


    }

}


