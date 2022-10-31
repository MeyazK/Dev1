public  class calculater2 {
    public  integer add(integer a,integer b){
        integer sum=a+b;
        return sum;
    }
    public integer add(integer a,integer b,integer c){
        system.debug('inside add method with 3 params');
        integer sum=a+b+c;
        return sum;
    }
    public boolean leapYearCheck(date dt){
        integer year =dt.year();
        boolean isLeap=date.isLeapYear(year);
        return isLeap;
    }
    public static integer add(List<integer> intList) {  // anony listdemo2 de
        integer returnSum=0;
        // 10,15,21
        for (integer eachInteger: intList){
            returnSum=returnSum+eachInteger;

        }
        return returnSum;

    }  


}
