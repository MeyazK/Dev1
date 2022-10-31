public  class OperationsHelper {
    public decimal largestOutOfTwoNumbers(decimal a,decimal b){
        decimal largestNumber;
        if (a>=b) {
            largestNumber=a;
            
        } else {
            largestNumber=b;
        }
        return largestNumber;

    }
    public decimal smallestOutOfThreeNumbers(decimal x,decimal y , decimal z){
        decimal theSmallestNumber =Math.min(x, y);
        theSmallestNumber= Math.min(theSmallestNumber , z);
        return theSmallestNumber ;
        
    }
    public integer  sumofPositiveIntegers(integer n){
        Integer resultSum;
        if (n<0) {
            resultSum=null;
            system.debug('We are not calculating the sum for negative numbers');    
        } else {
            resultSum=0;
            for (Integer i = 0; i < n; i++) {
                resultSum = resultSum+i;
                
            }
            
        }
        return resultSum;
    }
}