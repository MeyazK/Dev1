List<string> fruitsSet  = new List<string>{'Banana','Apple','Orange','Melone'};

for (string fruit: fruitsSet ) {
    system.debug(fruit);
}

system.debug(fruitsSet.size());

fruitsSet.add('Apricot');
system.debug(fruitsSet);

boolean isContainsAppricot = fruitsSet.contains('Apricot');
system.debug(isContainsAppricot);

boolean isEmpty=fruitsSet.isEmpty();
system.debug(isEmpty);