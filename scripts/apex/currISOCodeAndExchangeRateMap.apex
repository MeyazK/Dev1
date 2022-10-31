Map<string,decimal> currISOCodeAndExchangeRateMap=new map<string,decimal>();
currISOCodeAndExchangeRateMap.put('AUD', 0.73);
currISOCodeAndExchangeRateMap.put('CAD', 0.78);
currISOCodeAndExchangeRateMap.put('EUR', 1.13);
currISOCodeAndExchangeRateMap.put('NZD', 0.68);
currISOCodeAndExchangeRateMap.put('INR', 0.013);
system.debug('map of currency and exchange rate values are ' +currISOCodeAndExchangeRateMap);

decimal ISOcodeAUD=currISOCodeAndExchangeRateMap.get('AUD');
system.debug('currency rate for AUD is '+ISOcodeAUD);

boolean isSADConRate= currISOCodeAndExchangeRateMap.containsKey('SAD');
SYSTEM.DEBUG('hAS THE CONVERSASION RATE ' +isSADConRate);

Set<string> highCurrRate=new Set<string>();
Set<string> lowCurrRate=new Set<string>();
 
 for(string eachCurr: currISOCodeAndExchangeRateMap.keySet()){
     if(currISOCodeAndExchangeRateMap.get(eachCurr)>=1){
        highCurrRate.add(eachCurr);
     }else{
        lowCurrRate.add(eachCurr);
     }
      
 }
 system.debug('more than 1: '+highCurrRate);
 system.debug('low than 1'+lowCurrRate);

