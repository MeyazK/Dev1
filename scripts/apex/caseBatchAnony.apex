CaseSchedulable csh = new CaseSchedulable();
string cron = '0 0 1 ? * MON *';
System.schedule('caseJob', cron, csh);