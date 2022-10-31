 map<string, string > mapCountryCurrency =new map<string, string >();
mapCountryCurrency.put('USA','Dollar');
mapCountryCurrency.put('France','Euro');
mapCountryCurrency.put('India','Rupees');
mapCountryCurrency.put('India','Rupee');
mapCountryCurrency.put('Turkey','Lira');
system.debug(mapCountryCurrency);

string Ind='India';
string IndianCurrency=mapCountryCurrency.get(Ind);
string TurkiyeCurrency= mapCountryCurrency.get('Turkey');

system.debug('India Currency==>>>'+IndianCurrency);
system.debug('Turkiye currency==>>'+TurkiyeCurrency);

Set<String>  allCountries = mapCountryCurrency.keySet();
system.debug('all countries are ==>> '+ allCountries);

List<String> allCurrencies = mapCountryCurrency.values();
system.debug('all currencies  == >>>> '+allCurrencies);
 //liste halinde cekmek icin kullanilir value metodu

Set<String>  countrySet = mapCountryCurrency.keySet();
for(string eachKey:countrySet){
    system.debug('each Key:  '+eachKey); // dynamic

    string eachCurrency=mapCountryCurrency.get(eachKey);
    system.debug('each currency==>>'+eachCurrency);
    system.debug('===========');

}