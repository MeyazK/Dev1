public class SetDemo {
    public static void citySet() {
        set<string> cities = new set<string>();
        cities.add('Tokyo');
        cities.add('Nairobi');
        cities.add('Lisbon');
        cities.add('Berlin');
        cities.add('Tokyo');
        cities.add('Berlin');
        cities.add('Nairobi');
 
        system.debug('set of cities = ' + cities);
    }
 
    public static void randomIntegerSet() {
        Set<integer> integerSet = new Set<integer>();
        integerSet.add(15);
        integerSet.add(19);
        integerSet.add(21);
        integerSet.add(15);
        integerSet.add(15);
        integerSet.add(15);
        integerSet.add(15);
        system.debug('integer set ===> ' + integerSet);
    }
 
    public static set<integer> setFromList(List<integer> intList) {
         Set<Integer> setOfInt = new set<integer>();
         //set we can add all elements of a SET. 
         setOfInt.addAll(intList);//addAll is used to add all the elements from a list or a set. 
         return setOfInt;
     }
     public static Set<string> capitalizeAllSet(set<String>setString){
        Set<String> returnSet = new Set<string>();
        //login to add uppercase
        for (string eachSttr : setString) {
            string tempStr=eachSttr.toUppercase();
            returnSet.add(tempStr);
        }
        return returnSet;
     }
 }

