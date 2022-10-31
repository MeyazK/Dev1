/*
QUESTION 1:
1. When a case is created, check the description field of the newly created case - if the description
field contains the word ‘password’, then create a child case with the following field values
- subject = ‘Parent Case may contain secret info, do something NOW’
- parentId = _______ (newly create case id)
- priority = ‘High’
- Description = ‘Secret info not allowed in case’

2. Write the Test class for the triggers and trigger handlers written for the above logic.
*/


public  class CaseTriggerHandler7 {
    //create child case if description contains 'password'.
    public static void createChildCase(List<Case> caseTriggerNew) {
        //store keyword to check in one variable
        string checkKeyword = 'password';
        //store case id in set for which we want to create child cases
        Set<id> caseIDs = new set<id>();

        for (case eachCase : caseTriggerNew) {
            //check if description field contains keyword (ignoring case)
            if (eachCase.Description.containsIgnoreCase(checkkeyword)) {
                caseIDs.add(eachCase.Id);
            }
        }
        //check if set has any elements
        if(!caseIDs.isEmpty()){
            List<case> createCases = new list<case>();
            for (ID eachID : caseIds) {
                Case c = new case();
                c.Subject = 'Parent case may contain secret info, do something NOW';
                c.ParentId = eachID;
                c.Priority = 'High';
                c.Description = 'Secret info not allowed in case';
                createCases.add(c);
            }
            insert createCases; //to find in org, search in salesforce 'Parent case may contain secret info, do something NOW'
            system.debug('created cases -> ' + createCases);
        }
    }

}
/*
- Child case istedigi icin id'ye ihtiyacimiz var
- Insert durumu ve id gerekli old icin after insert de yapabiliriz bunu
- id gerekli old icin bos set olusturuyoruz
- Baslangicta casetriggernew description password olup olmadigini kontrol edelim ve set'in icine atalim
- daha sonra , if bu set bos degilse icine gir , daha sonra gerekli filedlari olustur , listeye ekle 
- listeyi insert et.
*/
