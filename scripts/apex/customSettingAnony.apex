
Map<string, country_code__c> cc = country_code__c.getAll();
system.debug('Country code map ==>>' +cc);

for (string eachCountry : cc.keySet()) {
    country_code__C eachCC=cc.get(eachCountry);
    String isoCode =eachCC.iso_code__C;
    system.debug(eachCountry+'ISO Code is'+isoCode);

}

// if we want to get iso code for Canada

country_code__c can =country_code__c.getInstance('Canada');
system.debug('Cnada iso code is '+can.iso_code__c);