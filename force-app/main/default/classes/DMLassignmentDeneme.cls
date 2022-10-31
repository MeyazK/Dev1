public class DMLassignmentDeneme {
    public static void insertSomeWords(){
        account word1=new account();
        word1.name='United%';
        insert word1;
        system.debug(word1);
        
    }
    public static void updateSomeWords(){
        account updateWord1=[SELECT id,name 
                             FROM account
                             WHERE name  
                             LIKE 'United Oil & Gas Corp.'];
        updateWord1.name='United% Oil & Gas Corp.';
        update updateWord1;

        account updateWord2=[SELECT id,name 
                             FROM account
                             WHERE name  
                             LIKE 'United Oil & Gas, Singapore'];

        updateWord1.name='United% Oil & Gas, Singapore';
        update updateWord2;

        
    }

}
