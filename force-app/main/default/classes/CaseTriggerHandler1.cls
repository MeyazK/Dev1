public  class CaseTriggerHandler1 {
     public static void insertCase(){

        case cs=new case();
        cs.subject='Case Tigger Test';
        cs.status='New';
        cs.Origin='Web';
        insert  cs;
        system.debug('nEW field '+cs);
     }
     public static void updateCase(){
        list<case> listCase=[SELECT Subject
                             FROM case 
                             ORDER BY  createddate desc limit 1 ];
        List<case> emptyCaseList = new List<case>();
        for (case eachCase : listCase) {
            eachCase.subject='Case Tigger Test Update';
            emptyCaseList.add(eachCase);
        }
        update emptyCaseList;

     }
     public static void deleteCase(){
        case cs1=[SELECT id 
                  FROM case
                  ORDER BY CreatedDate desc limit 1];
        delete cs1;
     }
}
