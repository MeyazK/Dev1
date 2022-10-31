public class AssingmentsTurkish {
   public static void planets(){
    List<string> listOfPlanets = new List<string>();
    listOfPlanets.add('Dünya');
    listOfPlanets.add('Venüs ');
    listOfPlanets.add('mars');
    listOfPlanets.add('Merkür');
    listOfPlanets.add('Satürn');
    listOfPlanets.add('Jupiter');
    listOfPlanets.add('Dünya');
    if (!listOfPlanets.isEmpty()) {
        system.debug(listOfPlanets);
    }
   }
   public static void inserting_Records_A(){
    List<account> listAcc = new List<account>();
    account acc1=new account();
    acc1.name='ACC1';
    acc1.PHONE='456778';
    acc1.site='first';
    acc1.website='firstAcc.com';
    listAcc.add(acc1);

    account acc2=new account();
    acc2.name='ACC2';
    acc2.PHONE='45534378';
    acc2.site='second';
    acc2.website='secondAcc.com';
    listAcc.add(acc2);
    

    insert listAcc;
    
   }
   public static void updateAcc(){
    List<account> listAcc = new List<account>();
    List<Account> accSOQL1=[SELECT name, phone 
                           FROM account 
                           WHERE  name = 'ACC1'];
    
    for (account eachAcc1 : accSOQL1) {
        eachAcc1.name='ACC1_Last';
        eachAcc1.phone='455678';
        listAcc.add(eachAcc1);
    }
     List<Account> accSOQL2=[SELECT name, phone 
                           FROM account 
                           WHERE  name = 'ACC2'];
    
    for (account eachAcc2 : accSOQL2) {
        eachAcc2.name='ACC1_Last';
        eachAcc2.phone='455678';
        listAcc.add(eachAcc2);
    }
    update listAcc;
   }
   
}
