@isTest
public class SalesforceProjectTriggerHandlerTest {
    @isTest
    private static void testFuture1() {
        //prepare data
        Salesforce_Project__c sp = new Salesforce_Project__c();
        sp.Project_Name__c = 'Test future';
        sp.Description__c = 'test description';

        Salesforce_Project__c sp2 = new Salesforce_Project__c();
        sp2.Project_Name__c = 'Test future2';
        sp2.Description__c = 'test description2';
        
        List<Salesforce_Project__c> insertSP = new List<Salesforce_Project__c>{sp, sp2};
        insert insertSP;

        set<id> setId = new set<id> {sp.id, sp2.id};

        Test.startTest();
        SalesforceProjectTriggerHandler.updateProjectDescription(setId);
        Test.stopTest();
        // future methodlarda bu iki method kesinlikle kullanilmali.

        List<Salesforce_Project__c> resultSP = [select id, description__c from Salesforce_Project__c];
        system.assert(resultSP[0].description__c.contains('future'));
    }
    @istest 
    private static void testFuture2(){

        // hazirlik
        Salesforce_Project__c sp = new Salesforce_Project__c();
        sp.Project_Name__c = 'Test future';
        sp.Description__c = 'test description';
        sp.status__c='New';

        INSERT SP; 
         
        list<salesforce_ticket__c> listTicket= new list<salesforce_ticket__c>();
        for (Integer i = 0; i < 200; i++) {
            salesforce_ticket__c st=new salesforce_ticket__c();
            st.status__c ='New';
            st.subject__c='Test Future' +i;
            st.salesforce_project__c=sp.id; // ticketlari  project objectine bagladik
            listTicket.add(st);
        }
        insert listTicket;

        // hazirlik kismi tamamlandi

        // test kismi

        test.startTest();
        sp.status__c='Completed';
        update sp;
        test.stoptest();

        // assertion
        list<salesforce_ticket__c> listTicketTest=[SELECT id, status__c 
                                                   FROM salesforce_ticket__c
                                                   WHERE salesforce_project__c =:sp.id];
        
        for (salesforce_ticket__c stTest : listTicketTest) {
            system.assertEquals('Completed',stTest.status__c);
        }

    }
}