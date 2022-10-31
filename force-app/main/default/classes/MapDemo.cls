public  class MapDemo {
    public static string retrieveMonth(integer m){
        string month='';
        Map<Integer,string> mapMonth=new Map<Integer,String>();
        mapMonth.put(1, 'January');
        mapMonth.put(2, 'February');
        mapMonth.put(3, 'March');
        mapMonth.put(4, 'April');
        mapMonth.put(5, 'May');
        mapMonth.put(6, 'June');
        mapMonth.put(7, 'July');
        mapMonth.put(8, 'August');
        mapMonth.put(9, 'September');
        mapMonth.put(10, 'October');
        mapMonth.put(11, 'November');
        mapMonth.put(12, 'December');

        //month =mapMonth.get(m);  // this is first way 
        //return month;

        Boolean keyExists =mapMonth.containsKey(m); //second way 
        if(keyExists){
            month=mapMonth.get(m);

        }else{
            month ='No such month exists.Please try again';

        }
        return month;
    }

}
