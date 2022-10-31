public  class SoqlDemo2 {
    public static void childToParent_SOQL1(){
        List<contact> listContact= [SELECT ID, name , Account.Name , account.industry
                                    FROM CONTACT 
                                    WHERE account.industry='Energy'];
        for (contact eachContact : listContact) {
            string accName=eachContact.account.name;
            string accIndustry= eachContact.account.industry;
            //string  accPhone=eachContact.account.phone;  // will this work?
            system.debug('contact name is ' +eachContact.name + ', its account name is ' +accName);
            
        }

    }
    public static void parentToChild_SOQL1(){
        list<account> accountWithOpps=[SELECT id, name, annualrevenue, type , 
                                      (SELECT name, amount, stageName 
                                      FROM opportunities 
                                      WHERE stageName='Closed Won')
                                      FROM account  
                                      WHERE type= 'Customer - Direct'];
        for (account eachAcc : accountWithOpps) {
            system.debug('account name is  '+eachAcc.name+ ' and annual revenue is '+eachAcc.annualrevenue);
            system.debug('----');
            list<opportunity> accOpportunities =eachAcc.opportunities;
            for (opportunity eachOpp : accOpportunities) {
                system.debug('app anme is '+eachOpp.name +' AND amount is ' + eachOpp.amount);
                
            }
            system.debug('===========');           
        }
    }
    public static void parentToChild_SOQL2() {
        //soql query on Project and also fetch all tickets.
        List<salesforce_project__c> listSP = [SELECT name, project_name__c, status__c, 
                                              (SELECT name, subject__c, priority__c 
                                              FROM salesforce_tickets__r ) 
                                              FROM salesforce_project__c];
        integer totalHP=0;
        for (salesforce_project__c eachSP : listSP) {
            system.debug('project name IS ' + eachSP.Project_Name__c + ' and autonumber is ' + eachSP.Name);

            List<Salesforce_Ticket__c> listST = eachSP.Salesforce_Tickets__r;
            system.debug('total tickets in ' + eachSP.Name + ' are ' + listST.size());
            integer eachProjectHP=0;
            for (salesforce_ticket__c eachST : listST) {
                // check if eachST priority is HIGH
                if (eachST.priority__c=='High') {
                    eachProjectHP++;
                    totalHp++;
                    
                }
            }
            system.debug('projects # of high priority tickets-->'+eachProjectHP);
        }
        SYSTEM.DEBUG('total # of high priority tickets-->'+totalHP);
    }
}
