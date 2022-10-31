List<Account> accList =new List<Account>();
acclist=AccConAndOppOperations.returnAccount();
system.debug(AccConAndOppOperations.returnAccount());
system.debug(accList);

List<opportunity> oppList = new List<opportunity>();
oppList=AccConAndOppOperations.opportunityUpdate('Web','Closed Lost');
System.debug(oppList);

AccConAndOppOperations.opportunityUpdate1();

AccConAndOppOperations.accountCreaation('salesforce', 343545667, 'Customer - Direct');
AccConAndOppOperations.accountCreaation(null, 87657, 'Customer - Direct');








