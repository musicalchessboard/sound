
2::second => dur T;
T - (now %T) => now;

SndBuf buffy => PRCRev r => dac;
me.dir()+"woodblock.wav" => buffy.read; 

0 => int counter;

while(1){

    0 => buffy.pos;
    0 => r.mix;

    if(counter == 3){
        .9 => buffy.gain;
    }
    else{
        0 => buffy.gain;
    }
    ++counter;
    if(counter == 8){
    	0 => counter;
    }
    
   1 => buffy.rate;    
    
   .25::second => now;  

}

