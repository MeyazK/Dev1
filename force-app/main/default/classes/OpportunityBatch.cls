public class OpportunityBatch  implements Database.Batchable<SObject> , Database.stateful{

    integer counterDelete=0;
    public Database.QueryLocator start(Database.BatchableContext bc){
        //write query.
        //sobject is Opporunity
        system.debug('batch started. congrats.');
        Database.QueryLocator ql = database.getQueryLocator([select id, stagename from opportunity where stagename='Closed Lost']);
                                                         //('select id, description from account')
                                       // bu sekilde bir query de yapilabilir bu method sayesinde
        return ql;
    }

    public void execute(Database.BatchableContext bc, List<opportunity> scope){
        system.debug('execute method running.');
        //dmls
        for (opportunity opp : scope) {
            counterDelete++;
        }
        delete scope;
    }

    public void finish(Database.BatchableContext bc){
        system.debug('finish method executed.Batch done.');
        system.debug('the number of Deleted stagename with Closed Lost ' + counterDelete);
    }
}
