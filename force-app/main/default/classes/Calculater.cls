public class Calculater {
    public void printNewMessage(string msg){  // burada isrediğimiz kadar type'lı ifade girebiliriz.
        // ve bu data type'ın aynısını anonymous da aynı sıra ile çağırmamız gerekir.

        // msg is the variable which is supposed to be used INSIDE method.
        // It nothing to do with  outside of the method.
        system.debug(msg);
        

    }
    public string printAndReturnMessage(string msg){
        string returnStr = msg + ' .. OK Cool';
        return returnStr;

    }
}
