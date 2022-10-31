public class CaseBatch8  implements Database.Batchable<SObject> , Database.stateful{

    integer count=0;
    List<task> listCase=new list<task>();
    public Database.QueryLocator start(Database.BatchableContext bc){
        //write query.
        //sobject is Opporunity
        system.debug('batch started. congrats.');
        Database.QueryLocator ql = database.getQueryLocator([select id, status,ownerid,LastModifiedDate
        from case where status !='Closed' AND LastModifiedDate < LAST_N_DAYS:5]);
                                                         //('select id, description from account')
                                       // bu sekilde bir query de yapilabilir bu method sayesinde
        return ql;
    }

    public void execute(Database.BatchableContext bc, List<case> scope){
        system.debug('execute method running.');
        //dmls

        for (case cs : scope) {
           task t=new task();
           t.whatId=cs.id;
           t.subject=system.label.subject;
           t.ActivityDate=date.today()+2;
           t.Description=system.label.Description;
           t.OwnerId=cs.OwnerId;
           t.status='In Progress';
           listCase.add(t);

           count++;
        }
            if (!listCase.isempty()) {
            insert listCase;

        }
    }

    public void finish(Database.BatchableContext bc){
        system.debug('finish method executed.Batch done.');
        system.debug('All list of tasks that is releted to case ' + count+listCase);
    }
}