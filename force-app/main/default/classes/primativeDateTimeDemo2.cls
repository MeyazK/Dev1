public class primativeDateTimeDemo2 {
  
    public void printNewDate(){
        system.debug('create new date instance ');

        date newDate=date.newInstance(1997,5,23);
        system.debug('newDate is '+newDate);

        date newDate2=Date.newInstance(2022,2,19);
        system.debug(newDate2);

        date todayDate=date.today();
        system.debug('today date is ..'+todayDate);

    }
    public void printNewTime(){
        Time mytime = time.newInstance(18,25,15,52);
        system.debug(mytime);

        Time mytime2=time.newInstance(5,15,35,5);
        system.debug(mytime2);
        
    
    }
    
    public void printNewDateTime(){
        date todayDate=date.today();
        time mytime=time.newInstance(18,25,15,52);

        //1. new datetime   from date and time 
        datetime dt1 = datetime.newInstance(todayDate,mytime);
        system.debug('dt is ....> '+dt1);

        //2. datetime using YEAR,MONTH,DAY
        datetime dt2 = datetime.newInstance(2021,9,14);
        system.debug('dt2 is --->' + dt2);

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

        dateTime birthdate=dateTime.newInstance(1996,8,10);
        long longbirthdate=birthdate.getTime();
        system.debug('long birth date= '+longbirthdate);

    }

    }

