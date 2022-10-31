public  class looooopsWhile {
    public void print_int_while(){
        integer count =1;
        while(count<=25){
            System.debug(count);
            count++;
        }
    }
    public void print_N_numbers(integer n1){
        for (Integer i = 0; i < n1; i++) {
            system.debug(i);
        }
    }
    public void print_N_numbers(integer startInt, integer endInt){
        for (integer i=startInt;i<endInt;i++){
            integer modI =math.mod(i, 2); // this is mod from the math. ----->>>>> i/2 
            if (modI==1){
                system.debug(i);
            }
        }
        
    }

}
