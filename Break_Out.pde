//Break Out
//William Cheng
//Block 1-2B

//Mode Framework
int mode;
final int INTRO = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;

//Entity Variables
float paddlex, ballx, bally, balld;
boolean akey, dkey; 
float vx, vy; 

//Scoring
int timer, lives, score;

void setup() {
  size(800, 800);
  mode = GAME;
  
  //initalize paddle
  paddlex = 400;
  
  //initlize ball
  ballx = 400;
  bally = 600; 
  balld = 30;
  
  //Initlize velocity
  vx = random(-10, 10);
  vy = random(-10, 10);
  
  //Initialize keyboard variabless
  akey = dkey = false;
  
 //Time and points
 timer = 100;
 lives = 3;
 score = 0;
  
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Mode error: " + mode);
}
}
