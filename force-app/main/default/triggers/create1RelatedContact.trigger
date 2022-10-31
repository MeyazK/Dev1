trigger create1RelatedContact on account (after insert) {

    list<contact> listC=new list<contact>();
    for (account acc : trigger.new) {
        contact c=new contact();
        c.lastname=acc.name;
        c.accountid=acc.id;
        listC.add(c);
    }
    insert listC;
}