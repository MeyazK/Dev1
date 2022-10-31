public  class Car {  
    //class body. Inside of class.
    // if change anything, -> Save -> Deploy
    //do I have to deploy again?
    //change anything --> save---> deploy

    public string carColor='';
    public string carName='';
    
    integer maxSpeedKmPerHr=150; // this a class variable? yes.private
                                // we can change this method in this class because it is private.


   public void switchOn(){
    //method body
    System.debug('Starting the car NOW');

   }
   public void drive(){
    switchOn();  // extra method
    system.debug('driving ..: '+ carName);
   }
   public void driveAtMaxSpeed(){
    drive(); // extra method
    string description = 'Driving ' + carName+' at max speed of ' +maxSpeedKmPerHr+'km/hr';
    system.debug(description);
   }

   // yeni ayri kod 

   public string carColor2='';
   public string  carName2='';
   public Integer carSpeed2=130;
   public void switchOnnn(){
    system.debug('starting the car ');

   }
   public void drive2(){
    system.debug('its name is '+carName2);
   }
   public void finalCar(){
     string drivingDescription='Car name is '+ carName2+'  and its color is ' + carColor2 
    + '  and its speed is for per hour now '+carSpeed2;
    system.debug(drivingDescription);

   }
}
// outside of class