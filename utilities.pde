void manageBrick (int i) {
   //Colours
   if (y[i] == 100) fill(red);
   if (y[i] == 200) fill(cyan);
   if (y[i] == 300) fill(green);
   if (y[i] == 400) fill(yellow);
   if (y[i] == 500) fill(pink);
   
   //Score Points
   circle(x[i], y[i], brickd);
   if (dist(ballx, bally, x[i], y[i]) < balld/2 + brickd/2) {
     vx = (ballx - x[i])/5;
     vy = (bally - y[i])/5;
     alive[i] = false;
     score = score + 1;
     score1.rewind();
     score1.pause();
     score1.play();
  
     
 }
 
}
