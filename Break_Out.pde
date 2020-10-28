//Break Out
//William Cheng
//Block 1-2B

//Arrays
int[] x;
int[] y;
int brickd;
int n;

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
float d;
int tempx, tempy;

//Scoring
int timer, lives, score;



void setup() {
  brickd = 50;
  n = 28;
  x = new int [n];
  y = new int [n];
  
  //x[0] = 100;
  //y[0] = 100;
  
  //x[1] = 400;
  //y[1] = 100;
  
  //x[2] = 700;
  //y[2] = 100;
  
  //x[3] = 100;
  //y[3] = 200;
  
  //x[4] = 400;
  //y[4] = 200;
  
  //x[5] = 700;
  //y[5] = 200;
  
  tempx = 100;
  tempy = 100; 
  
  int i = 0;
  while( i < n) {
      x[i] = tempx;
      y[i] = tempy;
      tempx = tempx + 100;
      i ++;
  
  
    
  if (tempx == 800) {
     tempx = 100;
     tempy = tempy + 100;
    }
  }
  
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
