public  class Calculator {
    public decimal   dynamicCalulationMethod(decimal m,decimal n , string  operator ){
        decimal total;
        if (operator =='ADDITION') {
            total =m+n;
            
        }
        else if (operator=='SUBTRACTION') {
            total=m-n;
            
        }
        else if (operator=='DIVISION'){
            total =m/n;
            
        }
        else if (operator =='MULTIPLICATION'){

           total=m*n;
        }
        else {
            system.debug('Wrong operation selected ');
        }
        return total;

    }
    public string printAndReturn (string msg){
        string returnStr=msg+'....OK Cool';
        return returnStr; // method dynamic oldugu icin return ile donduruyoruz.

    }

}
