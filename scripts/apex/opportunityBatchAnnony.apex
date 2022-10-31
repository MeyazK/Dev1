/*
AccountSchedulable ac = new AccountSchedulable();

string cronExp = '0 0 22 ? * 6L';

System.schedule('accUpdateJob', cronExp, ac);
*/
OpportunityBatch opp=new OpportunityBatch();
 string cronExp = '0 0 0,15 ? * * *';
 System.schedule('ScheduleOpp',cronExp, opp);

