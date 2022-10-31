AccountsBatch ab=new AccountsBatch();
ab batchId=Database.executebatch(ab); // 200 er li gruplar halinde alir otamatik.

AccountsBatch ab=new AccountsBatch();
ab batchId=Database.executebatch(ab,50);  // 50 ser halde alir.