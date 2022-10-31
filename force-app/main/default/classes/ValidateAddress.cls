public  class ValidateAddress {
    public void validateHomeAddress(){

        string houseName =' Red';
        string streetName =' Sevda';
        string cityName =' Warsaw';
        string stateName=' Warsawww';
        string stateIsoCode =' wlw';
        string countryName =' Poland';
        string countryIsoCode =' pl';

        integer numberOfChrt=streetName.length();
        system.debug('The number of characters in the street name. '+numberOfChrt);

        boolean streetNameContains=streetName.contains(houseName);
        system.debug('the street name contains a house name in it or not? '+streetNameContains);

        boolean streetNameContainsIso=streetName.contains(stateIsoCode);
        system.debug('the street name contains the state iso code in it?  '+streetNameContainsIso);

        string stateIsoUpper=stateIsoCode.toUppercase();
        System.debug('Uppercase state iso code : ' + stateIsoUpper);

        string countryIsoCodeUpper=countryIsoCode.toUppercase();
        System.debug('Uppercase state  country iso code: ' + countryIsoCodeUpper);

        string countryNameUpper=countryName.toUppercase();
        System.debug('Uppercase state country name: ' + countryNameUpper);

        string cityNameLowerCase=cityName.toLowercase();
        system.debug('city name with lowercase:  '+cityNameLowerCase);

        string stateNameLowerCase=stateName.toLowercase();
        System.debug('state name with lowercase: '+stateNameLowerCase);

        string fullInfo=houseName+' '+streetName+' '+cityNameLowerCase+' '+stateName+' '+countryName;
        system.debug('Concatination of my full Informations: '+fullInfo);
    }
}