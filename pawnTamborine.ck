
2::second => dur T;
T - (now %T) + 1::second => now;
while(1){
    
    // declare the object which will store the sound file, and pass it through tothe dac
    SndBuf buffy => PRCRev r => dac;
    
    Delay del[3];
    .2 => r.mix;

   //me.dir()+"samples/percussion/bass-drum__025_mezzo-forte_bass-drum-mallet.mp3" => buffy.read; 
   me.dir()+"tambourine__025_forte_hand.wav" => buffy.read; 

   0.5 => buffy.gain; 
   1 => buffy.rate;    
    
   2::second => now;  
    
    
}