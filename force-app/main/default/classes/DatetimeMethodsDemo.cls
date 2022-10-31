public  class DatetimeMethodsDemo {
    public void  colculateAgeInMonths(){
        // today date
        date todayDate=date.today();
        // birthdate
        date birthdate =date.newInstance(1996, 8, 10);

        integer ageInMonths=birthdate.monthsBetween(todayDate);
        system.debug('Mahmet age in months is '+ageInMonths);

        integer ageInDays=birthdate.daysBetween(todayDate);
        system.debug('Mahmet age in days is '+ageInDays);
    }
    
    public void printSubscriptionEndDate(){
        // today date = subs start  date 
        date subscriptionStartDate= date.today();
        date subscriptionEndDate=subscriptionStartDate.addDays(1000); // parameter is int
        // we can pass negative numbers?
        system.debug('subscription will end On '+subscriptionStartDate);
    }
    public void printOfferEndTime(){
        datetime offerStartDt= datetime.now();

        datetime offerEndDt = offerStartDt.addHours(51);
        system.debug('offer ends datetime '+offerEndDt);

        // fetch just date companent
        Date offerEndDate= offerEndDt.date();
        system.debug('offerEndDate is ' +offerEndDate);
    }    
}
