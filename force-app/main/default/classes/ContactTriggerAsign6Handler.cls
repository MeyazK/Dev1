public class ContactTriggerAsign6Handler {
    public static void updateContactOtherPhone(list<contact> triggerNew) {
        set<id> accIds = new set<id>();
        for (contact cont : triggerNew) {
            accIds.add(cont.accountid);
        }
        list<account> listAcc = [select id, name, phone from account where id in :accIds];
        if (!listAcc.isEmpty()) {
            map<id, account> mapAcc = new map<id, account>();
            for (account acc : listAcc) {
                mapAcc.put(acc.Id, acc);
            }
            for (contact cont1 : triggerNew) {
                cont1.otherphone = mapAcc.get(cont1.accountid).phone;
            }
        }
    }
}
