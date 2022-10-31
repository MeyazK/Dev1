/*
Soru1:-->>Create one date filed 'Next Activity Date' in Lead Object (org'da yapildi)
next activity date should be automatically populated with 'Upcoming ' Task date
if task is closed/ deferred , update the Next Activity Date with OPEN upcoming  task

Ip ucu: 
Object TASK olmalidir(islemler onun uzerinde donuyor ilkten), ID gerekli degil.
Ayri recordu update etme yok , DML gerekli baska bir filed'i update etmek icin
DML gerekli oldugu icinde AFTER gerekli olur. Ayrica iki farkli object uzerinde islem yapiyoruz.
Hem insert hem update durumlarini ele almaliyiz.

*/
public class TaskTriggerHandler7 {
    public static void updateLeadNextActivityDate(list<task>TtriggerNew,
                                                  list<task>TtriggerOld,
                                                  Map<id, task> TtriggerNewMap,
                                                  Map<id, task> TtriggerOldMap){
       set<id>  leadIds=new set<id>();
       if (TtriggerOld ==NULL) {
        for (task t : TtriggerNew) {
            // t.whoid is of LEAD
            // t.whoId is not null
            // NOT:How to get object name from Record Id in Salesforce
            // String sObjName = myId.getSObjectType().getDescribe().getName()

            if (t.WhoId!= null  && t.whoid.getSObjectType().getDescribe().getName()=='Lead'
                 && t.activitydate!=null) {
                // lead ile taskin lookup relation api'si
                 leadIds.add(t.whoid);
            }
        }

       }

    }

}
