list<Case> listCase = new list<case>();
for (Integer i = 0; i < 205; i++) {
    case c = new case();
    c.Subject = 'This is bug';
    c.Description = 'Resolve it';
    c.Status = 'New';
    c.Origin = 'Web';
    listCase.add(c);
}
insert listCase;

list<case> updateCase = [select id, status from case where status='Working'];
for (case eachCAse : updateCAse) {
    eachCase.Status = 'New';
}
update updateCase;

