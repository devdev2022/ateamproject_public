package chart;

import java.text.SimpleDateFormat;
import java.util.Timer;
import java.util.TimerTask;

public class StartgetChart {

    public static void main(String[] args) {
    	
        Timer scheduler = new Timer();
        TimerTask task = new TimerTask() {
            @Override
            public void run() 
            {
                SimpleDateFormat format2 = new SimpleDateFormat ( "yyyy년 MM월dd일 HH시mm분ss초");
                String format_time2 = format2.format (System.currentTimeMillis());
                getChart startChart= new getChart();
                startChart.getChart();


            }
        };
        scheduler.scheduleAtFixedRate(task, 100, 3600000); //  1시간마다 반복
    }
 // codes ...
 }

	
