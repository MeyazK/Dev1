SetDemo.citySet();
SetDemo.randomIntegerSet();


list<integer> listInteger = new list<integer>();
listInteger.add(10);
listInteger.add(15);
listInteger.add(21);
listInteger.add(15);
listInteger.add(15);
set<integer> setInteger = SetDemo.setFromList(listInteger);
system.debug('setInteger ==>> ' + setInteger);

        set<string> cities = new set<string>();
        cities.add('Tokyo');
        cities.add('Nairobi');
        cities.add('Lisbon');
        cities.add('Berlin');
        cities.add('Tokyo');
        cities.add('Berlin');
        cities.add('Nairobi');
        Set<string> capCities = SetDemo.capitalizeAllSet(cities);
        system.debug('cap cities ==>>'+capCities);
 