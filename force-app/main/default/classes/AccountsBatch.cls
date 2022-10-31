public class AccountsBatch  implements Database.Batchable<SObject> , Database.stateful{
    integer numberOfRecords=0;
    integer count =0;

    public Database.QueryLocator start(Database.BatchableContext bc){
        //write query.
        //sobject is Account
        system.debug('batch started. congrats.');
        Database.QueryLocator ql = database.getQueryLocator([select id, description from account]);
                                                         //('select id, description from account')
                                       // bu sekilde bir query de yapilabilir bu method sayesinde
        return ql;
    } 

    public void execute(Database.BatchableContext bc, List<account> scope){
        system.debug('execute method running.');
        //dmls
        for (account acc : scope) {
            acc.Description += '...Update via Batch.';
        }
        update scope;
    }

    public void finish(Database.BatchableContext bc){
        system.debug('finish method executed.Batch done.');
    }
}

/*
query kismi ve  dmls kismi haric digerleri tamamen kalip. Surekli ayni yapi kullanilacak
eger cok buyuk bir miktarda bir record ile islem yapilacaksa bu Account Batch kullanilabilir.
*/
