void game(){
background(0);
timer = timer - 1;

//Score
fill(cyan);
textSize(50);
text("Score:", 100, 600);
text(score, 300, 600);
text("Lives:", 480, 600);
text(lives, 680, 600);

//Gameover
if (lives == 0) {
  mode = GAMEOVER;
}
if (score == n) {
  mode = GAMEOVER;
}


//Draw Paddle
stroke(255);
strokeWeight(3);
fill(255);
circle(paddlex, 700, 100);

  //Distance between targets
  d = dist(paddlex, 700, ballx, bally);
  
 //paddle bounce
  if (d <= 50 + balld/2 ) {
    vx = (ballx - paddlex)/10;
    vy = (bally - 700)/10;
    bounce.rewind();
    bounce.play();
  }
  
//ball
circle(ballx, bally, balld);
  
//Control Paddle
if (akey == true && paddlex > 50) paddlex = paddlex - 5;
if (dkey == true && paddlex < 750) paddlex = paddlex + 5;

 //Hitting top and bottom
  if (bally < balld/2) {
      bally = balld/2;
     bounce.rewind();  
     bounce.play();
  }
  if (bally > 800 - balld/2 ) {
    bally = 800 - balld/2;
    bounce.rewind();
    bounce.play();
  }
  
  //Move Ball
    if (timer < 0) {
    ballx = ballx + vx;
    bally = bally + vy;
  }
  
  //Losing Lives
  if (bally > 800 - balld/2) {
  timer = 150;
  lives = lives - 1;
  ballx = 400;
  bally = 600;
  life.rewind();
  life.play();
  }
  
   //Bounce off walls
   //Top
   if (bally <= balld/2){
    vy = vy * -1;
    bounce.rewind();
    bounce.play();
   }
   
   //Left 
   if (ballx <= balld/2) {
   vx = vx * -1;
    bounce.rewind();
    bounce.play();
   }
   
   //Right
   if (ballx >= width - balld/2) {
   vx = vx * -1;
   bounce.rewind();
   bounce.play();
   }
   
   //Bricks
   //circle(x[0], y[0], brickd);
   //circle(x[1], y[1], brickd);
   //circle(x[2], y[2], brickd);
   
   int i = 0;
   while (i < n) {
     if (alive[i] == true){
   manageBrick(i);
     }
   i++;
   }
}



void gameClicks(){
  mode = PAUSE;
  
}

void gameKBP() {
  if (key == 'a' || key == 'A') akey = true;
  if (key == 'd' || key == 'D') dkey = true;
}

void gameKBR() {
  if (key == 'a' || key == 'A') akey = false;
  if (key == 'd' || key == 'D') dkey = false;
}
