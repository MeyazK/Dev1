try {
    Account acc=new account();
    insert acc;
} catch(DmlException dx){
    system.debug('');
}
catch(exception ex){
     system.debug('Something went wrong buddy?');
}

// will below line print?
system.debug('Apex ');
// Eger try catch kullanmadan bunu yazdirsaydik hata verirdi ve system.debug('Apex')'i yazdirmazdi.
// Ama suan ikisini de yazdiriyor.