
    List<account> listAccount = new List<account>();

         account acc1=new account();
         acc1.Name='bulk acc 1';
         //insert acc1
         listAccount.add(acc1);

         account acc2=new account();
         acc2.Name='bulk acc 2';
         //insert acc2
         listAccount.add(acc2);

         account acc3=new account();
         acc3.Name='bulk acc 3';
         //insert acc3
         listAccount.add(acc3);
         listAccount.add(acc3);

         insert listAccount; // insert list
