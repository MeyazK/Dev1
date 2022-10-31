public class StringDemoClass {
    public void stringMethod1(){
        string sessionDescription ='Lerning string method in apex language';
        system.debug(sessionDescription);

        // 1. length
        integer  lengthOfStr = sessionDescription.length();
        system.debug('length of str is ... '+ lengthOfStr );

        //2. to upper case
        string descriptionInCaps = sessionDescription.toUpperCase();
        system.debug('session description is '+descriptionInCaps );

        // 3.x contains APEX
        boolean containApex = sessionDescription.contains('apex');
        system.debug('contain apex '+containApex);

        // 


        // 3a contains 
        string s1= 'salesforce';
        boolean containSalesforce = sessionDescription.contains(s1);
        system.debug('has salesforce? '+containSalesforce);
        //2. datetime using YEAR, MONTH, DAY
        datetime dt2 = datetime.newInstance(2025,9,14); //this is MIDNIGHT FOR Pacific time (SF user's timezone). So gmt is +7
        system.debug('dt2 is --> ' + dt2); //it prints in GMT

        //3. datetime with YEAR, MONTH, DAY, HOUR, MINUTE, SECOND   
        datetime dt3 = datetime.newInstance(2022, 5, 15, 17, 45, 6); //It will create pacific time. 
        system.debug('dt3 --> ' + dt3);// but it will print GMT. 

        // 4. longtime 
        long longTime = 234657890L;
        dateTime dt4=datetime.newInstance(longTime);

        long longTimeZero=0;
        datetime dt41= datetime.newInstance(longTimeZero);
        system.debug(dt4);
        system.debug(dt41);

        // 5 .gmt
        datetime dt5= datetime.now();
        system.debug(dt5);  //print in GMT


        // 6. now
        datetime dt6 = datetime.now();
        system.debug(dt6);

        datetime dt7 = System.now();
        system.debug(dt7);

    }

 }


