public  class AssetTriggerHandler18 {
    public static void updateDescription(list<asset> aTriggerNew,
                                          list<asset> aTriggerOld,
                                          Map<id, asset> aTriggerNewMap,
                                          Map<id, asset> aTriggerOldMap){
        for (asset eachA : aTriggerNew) {
            boolean statusCheck= false;
            asset oldMap=aTriggerOldMap.get(eachA.id);

            if (aTriggerOld==null) {
                statusCheck=true;
            }
            if (aTriggerOld!=null && eachA.status !=oldMap.status) {
                statusCheck=true;
            }
            if (statusCheck) {
                if (eachA.status=='Shipped') {
                    eachA.description='Asset is shipped';
               }
               if (eachA.status=='Installed') {
                   eachA.description='Asset is Installed';
               }
            }
        }
    }
}
