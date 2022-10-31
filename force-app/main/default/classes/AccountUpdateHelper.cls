public  class AccountUpdateHelper {
    @invocableMethod
    public static void updateAccountWebsite(List<id> accIds) {
        List<account> updateAccounts = new List<account>();
        for (account eachAccount : [SELECT id,website 
                                   FROM account 
                                   WHERE ID IN : accIds]) {
            eachAccount.website='www.softinnovas.com';
            updateAccounts.add(eachAccount);
            
        }
        update updateAccounts;
    }
}
