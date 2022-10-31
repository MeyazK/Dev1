public  class Address {
    public void homeAddress(){
        String yName='Mehmet';
        integer familyMember=5;
        string myHouse='43b';
        integer myHouseNumber=8;
        string myStreet= 'Ryzowa';
        string myCity='Warsaw';
        string myState='Warsaw';
        string myStateCode='WRW';
        string myCountry='Poland';
        string myCtyCode='PL';
        integer myZip=24545;
        boolean isCurrentHome=true;

        system.debug('Your Name '+yName);
        system.debug('Total number of members in your family '+familyMember);
        system.debug('House Name '+myHouse);
        system.debug('House Number '+myHouseNumber);
        system.debug('Street Name '+myStreet);
        system.debug('City Name '+myCity);
        system.debug('State Name  '+myState);
        system.debug('State ISO Code  '+myStateCode);
        system.debug('Country Name '+myCountry);
        system.debug('Country ISO Code '+myCtyCode);
        system.debug('Zip Code ' +myZip);
        system.debug('Is this your current home or not? '+isCurrentHome);

    }

}
