Calculator cal=new Calculator();
decimal total = cal.dynamicCalulationMethod(10, 67.5, 'ADDITION');
system.debug('Addiction of 10 and 67.5'+total);

total = cal.dynamicCalulationMethod(90, 60, 'SUBTRACTION');
system.debug('SUBTRACTION of 90 and 60'+total);

total = cal.dynamicCalulationMethod(8, 2, 'DIVISION');
system.debug('DIVISION of 8 and 2  '+total);

total = cal.dynamicCalulationMethod(6, 4, 'MULTIPLICATION');
system.debug('MULTIPLICATION of 6 and 4'+total);

system.debug(total);


// ayri bir method string data typli parameterized method icin
Calculator calc=new Calculator();
string printThis=calc.printAndReturn('Print this message pls:))');

// string printThis=  bu ifadeyi kullanmak gerek cunku bizim methodumuz 
// parameterized ve dynamictir.Ve yeni bir variable name ile cagirmamiz icab eder.

system.debug(printThis);


