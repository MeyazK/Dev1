@isTest
public class CalculaterTest {
    @isTest
    private static void testCalculator() {
        Calculater calc = new Calculater();
        calc.printNewMessage('this is coming from a test method. so chill.');
    }
    @isTest
    private static void testCalPrint2() {
        Calculater calc = new Calculater();
        string returnmsg = calc.printAndReturnMessage('this is coming from a test method, again. so chill.');
        string expectedReturnMsg = 'this is coming from a test method, again. so chill. .. OK Cool';
        system.assertEquals(expectedReturnMsg, returnmsg);
    }
}
