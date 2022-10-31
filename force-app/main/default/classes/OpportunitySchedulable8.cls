public  class OpportunitySchedulable8 implements Schedulable {
    public void execute(SchedulableContext sc){
        OpportunityBatch opp=new OpportunityBatch();

        id batchId =database.executeBatch(opp,40);
    }

}

