public class PlayingWithDates {
    public void  printDateOutput(){
        date todayDate =date.today();
        System.debug('Today\'s date  is '+ todayDate);
 
        date theFuture=date.newInstance(2789, 11, 5);
        date thePast=date.newInstance(1459,3,4);

        integer dayInt=10;
        integer monthInt=8;
        integer yearInt=1996;

        date yourDate=date.newInstance(yearInt,monthInt,dayInt);

        System.debug('Hi,I came from '+theFuture);
        System.debug('I barely remember the  '+ thePast);
        System.debug('I was born in '+yourDate);



    }

}
