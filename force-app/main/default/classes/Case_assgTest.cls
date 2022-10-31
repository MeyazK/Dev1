@isTest
public class Case_assgTest {

    @istest
    private static void insertCaseTest(){
        Case_assg.caseInsert();

        list<case> listC=[select id, subject from case ];
        system.assertEquals(1,listC.size());
        system.assertEquals('Testcases',listC[0].subject);

    }
    @istest
    private static void updateCaseTest(){
        case c=new case();
        c.subject ='Testcase';
        insert c;

        Case_assg.caseUpdate();
        list<case> listC=[SELECT id ,subject from case where subject='Testing case 2'];
        system.assertEquals('Testing case 2',listC[0].subject);

    }
    @isTest
    private static void deleteCaseTest(){
        Case_assg.caseInsert();
        Case_assg.caseUpdate();
        Case_assg.caseDelete();

        list<case> listCase=[SELECT id,subject from case where subject like '%case 2%'];

        system.assertEquals(0, listCase.size());
    }
}
