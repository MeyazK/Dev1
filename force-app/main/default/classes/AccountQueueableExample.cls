public  class AccountQueueableExample implements Queueable{
    list<account> accList;
    public AccountQueueableExample(list<account> listAcc) {
        accList = listAcc;
    }
    public void execute(QueueableContext qc) {
        list<account> updateAcc=new list<account>();
        for (account acc : accList) {
            account a=new account();
            a.id=acc.id;
            a.name= acc.name = '--- SI';
            updateAcc.add(a);
        }
        update updateAcc;
    }
}