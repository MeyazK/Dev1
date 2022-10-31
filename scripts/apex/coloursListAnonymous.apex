List<string> coloursList = new List<string>();

coloursList.add('Yellow');
coloursList.add('Red');
coloursList.add('Black');
coloursList.add('Blue');
coloursList.add('Pink');
system.debug(coloursList);

integer sizeOfList=coloursList.size();
System.debug(sizeOfList);

boolean isRed=coloursList.contains('Red');
system.debug(isRed);

string last = coloursList.get(sizeOfList-1);
string lastUpperCase=last.toUpperCase();
system.debug(lastUpperCase);

string fourthOne=coloursList.get(3);
string upperFourth=fourthOne.toUpperCase();
system.debug(upperFourth);

coloursList[3] = coloursList[3].toUpperCase();
System.debug(coloursList[3]);

List<string> colourCodesList = new List<string>();

colourCodesList.add('#eBd717'+' is code for yellow');
colourCodesList.add('#e81717'+' is code for red');
colourCodesList.add('#3417e8'+' is code for dark blue');
colourCodesList.add('#d717e8' +'is code for pink');

system.debug(colourCodesList);


Boolean equalList=colourCodesList.equals(coloursList);
system.debug(equalList);

List<string> mergedList = new List<string>();
mergedList.addALL( coloursList);
mergedList.addALL( colourCodesList);
system.debug(mergedList);








