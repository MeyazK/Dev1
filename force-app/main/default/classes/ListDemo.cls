public  class ListDemo {
    
    public static string candidatesList(integer i) { //parametered 

        List<string> listCandidates = new List<String>();
        // null is not empty/empty is not null

        listCandidates.add('Mark'); //0
        listCandidates.add('Elon'); //1
        listCandidates.add('Bill'); //2
        listCandidates.add('Marc'); //3
        system.debug('candidates list is '+listCandidates);
        string returnStr='';
        if (i>=0 && i<listCandidates.size()){
            returnStr = listCandidates[i];
        } else {
            returnStr = 'No Value Found ';
          }
        return returnStr; 
        
    }
    public static void randomIntegerList(){

        List<Integer> listInteger =new list<integer>();
        listInteger.add(10);
        listInteger.add(15);
        listInteger.add(21);
        listInteger.add(15);
        listInteger.add(15);
        system.debug('random integer list is'+listInteger);

        integer index3value = listInteger.get(3); // it return 3, index of the list
        system.debug('index 3 value= '+index3value);

        integer index0value = listInteger.get(0); // it return 0. index of the list
        system.debug('index 0 value= '+index0value);


   }
   public static void allCats(){
    cat falconsCat = new cat('fluffy','white');
    cat memoCat    = new cat('simba','black');
    cat memo2Cat = new cat('smokey','gray');

    List<cat> cats = new List<cat>();

    cats.add(falconsCat);
    cats.add(memoCat);
    cats.add(memo2Cat );

    system.debug('all cats =>>>'+cats);
    if (!cats.isEmpty()) {
        cat index1=cats[1];
        system.debug('cat at index 3 =>> '+index1);
    }

   }
}
