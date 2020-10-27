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
circle(paddlex, 700, 100);

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
   
}



void gameClicks(){
  
  
}
