public class Case_assg {
    public static void caseInsert(){
        case c=new case();
        c.subject='Testcases';
        c.origin='Phone';
        insert c;


    }
    public static void caseUpdate(){
        case c=[SELECT id, subject from case where subject ='Testcase'];
        c.subject='Testing case 2';
        update c;

    }
    public static void caseDelete(){
        case c=[select id, subject from case where subject like '%case 2%'];
        delete c;


    }
}
