public  class GeneralClass {
    public  void createStudent(){
        Student s1=new Student();
        s1.Name='SRK';
        s1.Birthdate=date.newInstance(1990, 09, 04);
        s1.SchoolName='New Delhi Public School';
        s1.last = s1.Name+' studies at '+s1.SchoolName + ' and birthdate is '+s1.Birthdate;
        

        
        system.debug(s1.last);

        Student s2=new Student();
        s2.Name='MYK';
        s2.Birthdate=date.newInstance(1993, 05, 04);
        s2.SchoolName='New Delhi Public School';
        
        SYSTEM.DEBUG(s2);
        
    }

    public void justprint(){
        integer i =4+5+67+7+9;
        system.debug(i);
    }
}