Map<integer, string> zipCodeToCityMap= new Map<integer, string>();

zipCodeToCityMap.put(60606, 'Chicago');
zipCodeToCityMap.put(33162, 'Miami');
zipCodeToCityMap.put(10001, 'Newyork');
zipCodeToCityMap.put(75054, 'Texas');

boolean doesContainNumber=zipCodeToCityMap.containsKey(204101);   // it should be boolean

Set<Integer> zipCodes=zipCodeToCityMap.keySet();
system.debug('zip codes ... '+zipCodes);

List<string> cities = zipCodeToCityMap.values();
system.debug('cities ... ' +cities);

integer sizeOfMapping= zipCodeToCityMap.size();
system.debug('Size of map is  '+sizeOfMapping);
 

Set<Integer> uniqueZipCodeSet=zipCodeToCityMap.keySet();
for (integer eachKey : uniqueZipCodeSet) {
      string keys ='City in USA  with this key -->>> '+eachKey;        
      system.debug(keys );
        
}

List<string> cityNameList=zipCodeToCityMap.values();
for (string eachValue : cityNameList) {
      string values ='City names in USA   -->>> '+eachValue;        
      system.debug(values );
        
}

boolean Is_Map_Empty=zipCodeToCityMap.isEmpty();
system.debug('Is map empty? '+Is_Map_Empty);

// Map has a pair in the format of keys and values
// Map is the most important type of collection.

//List is a collection of ordered elements that can be 
// located based on an index.

//Set in SF is an unordered collection of elements that
// contain any type of data type.
      



