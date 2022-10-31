public  class PrimitiveDataTypeDemo {
    public void  printBasicDataType(){
        system.debug('printing primitive datatypes');
        string batchName= 'batch 9';
        integer totalCandidates=70;
        boolean isAdminCompleted= true;

        System.debug(batchName);
        System.debug(totalCandidates);
        System.debug(isAdminCompleted);

        string  batchDescription = batchName + ' is fantastic.';
        system.debug(batchDescription);

        Decimal  decValue= 70.55;
        system.debug(decValue);

        long longValue =76454321;
        system.debug(longValue);

        object obj='This is a string ';
        object obj2=40.5;
        object obj3=true ;
        system.debug('obj is '+obj);
        system.debug('obj2 value is  '+ obj2);
        system.debug('obj3 is this '+ obj3);

        ID id1='76453guıew453';
        system.debug(id1);
    }
}
