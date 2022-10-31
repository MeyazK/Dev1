Set<String> uniqueNameSet = new  Set<String>{'Tom', 'Jerry'};
system.debug(uniqueNameSet);
integer size= uniqueNameSet.size();
System.debug(size);

uniqueNameSet.add('Cat');
uniqueNameSet.add('dog');
System.debug(uniqueNameSet);

boolean IsNameExist=uniqueNameSet.contains('Memo');
System.debug(IsNameExist);


Boolean isEmpty=uniqueNameSet.isEmpty();
system.debug(isEmpty);

uniqueNameSet.clear();
system.debug(uniqueNameSet);


Boolean isEmpty1=uniqueNameSet.isEmpty();
system.debug(isEmpty1);

// 8- no because list is empty 

/*
1. Apex Sets
A Set in Salesforce is an unordered collection of elements that contain any type of data types like primitive types, collections, sObjects, user-defined types, and built-in Apex types.

2. Apex List
An Aapex List is a collection of ordered elements that can be located based on an index. This order follows a definite pattern.

3. Apex Maps
Apex Maps is a collection of key-value pairs with different key maps to a single value. Keys and values can be of primitive types, collections, sObjects, user-defined types, and built-in Apex types.

4. Apex Parameterized Typing
In general, Apex is a statically-typed programming language, which means before a variable can be used, users must specify the data type for a variable.

Moving forward to knowing more about Apex List and Set in Salesforce.
*/
