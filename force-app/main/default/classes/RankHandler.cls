public class RankHandler {
    public string rankPrize(integer rank){
        string prize='';
        if (rank==1){
           prize='Gold';
        }else if (rank==2){
            prize='Silver';
        }else if (rank==3){
            prize='Bronze';
        }else{
            if(rank<10){
                prize='Top 10 congratulations ';

            }else{
                prize='Participation certificated';
            }
        }
        return prize;

    }
    public  string rankPrizeSwitch(integer rank, integer n){
        string prize ='';
        string finalReturnSt=prize;
        switch on rank {
            when 1 {
                for (Integer i = 0; i < n; i++) {
                    finalReturnSt += prize;
                }
                prize ='Gold';
            }
            when 2 {
                prize ='Silver';
            }
            when 3 {
                prize ='Bronze';
            }
            when 4,5,6,7,8,9,10 {
                prize ='Top 10 it is';
            }
            when else {
                prize ='Cong for participations';
            }
        }
        return prize;

    }

}
