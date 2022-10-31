calculater2 c2=new calculater2();
integer s= c2.add(5,100);
system.debug('sum of 5 and 100 is '+s);

integer x = c2.add(3,5,4);
system.debug('x is '+x);

date today =date.today();
boolean isLeap = c2.leapYearCheck(today);
system.debug('this year is leap  '+  isLeap);

date dtt=date.newInstance(2000,01 ,01 );
boolean isLeap2=c2.leapYearCheck(dtt);
system.debug(isLeap2);








calculater2 c2=new calculater2();
List<integer> listInteger =new list<integer>();
listInteger.add(10);
listInteger.add(21);
listInteger.add(15);
listInteger.add(15);
listInteger.add(15);

integer sumList=calculater2.add(listInteger);
system.debug(sumList);

// sumlist diye bir integer tsnimladik ve colculater2 ye
// listInteger listesini ekleyip cagirdik.