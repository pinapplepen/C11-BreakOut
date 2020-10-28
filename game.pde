void game(){
background(0);
timer = timer - 1;

//Score
textSize(50);
text(score, 200, 100);
text(lives, 600, 100);

//Draw Paddle
stroke(255);
strokeWeight(3);
fill(255);
circle(paddlex, 700, 100);

  //Distance between targets
  d = dist(paddlex, 700, ballx, bally);
  
 //paddle bounce
  if (d <= 50 + balld/2 ) {
    vx = (ballx - paddlex)/20;
    vy = (bally - 700)/20;
  }
  
//ball
circle(ballx, bally, balld);
  
//Control Paddle
if (akey == true) paddlex = paddlex - 10;
if (dkey == true) paddlex = paddlex + 10;

 //Hitting top and bottom
  if (bally < balld/2) {
      bally = balld/2;
  }
  if (bally > 800 - balld/2 ) {
    bally = 800 - balld/2;
  }
  
  //Move Ball
    if (timer < 0) {
    ballx = ballx + vx;
    bally = bally + vy;
  }
  
  //Scoring
  if (bally > 800 - balld/2) {
  timer = 100;
  lives = lives - 1;
  ballx = 400;
  bally = 600;
  }
  
   //Bounce off walls
   //Top
   if (bally <= balld/2){
    vy = vy * -1;
   }
   
   //Left 
   if (ballx <= balld/2) {
   vx = vx * -1;
   }
   
   //Right
   if (ballx >= width - balld/2) {
   vx = vx * -1;
   }
   
   //Bricks
   //circle(x[0], y[0], brickd);
   //circle(x[1], y[1], brickd);
   //circle(x[2], y[2], brickd);
   
   int i = 0;
   while (i < n) {
   if (y[i] == 100) fill(250, 0, 0);
   if (y[i] == 200) fill(0, 227, 250);
   if (y[i] == 300) fill(20, 250, 0);
   if (y[i] == 400) fill(232, 250, 0);
   circle(x[i], y[i], brickd);
   if (dist(ballx, bally, x[i], y[i]) < balld/2 + brickd/2) {
     vx = (ballx - x[i])/10;
     vy = (bally - y[i])/10;
   }
   i = i + 1;
   }
}



void gameClicks(){
  
  
}
