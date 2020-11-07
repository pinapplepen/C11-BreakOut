//Sound
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Break Out
//William Cheng
//Block 1-2B

//Arrays
int[] x;
int[] y;
boolean[] alive;
int brickd;
int n;

//Colours
color red = #FF0000;
color cyan = #00E3FA;
color green = #14FA00;
color yellow = #E8FA00;
color pink = #FF55F7;

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

//Gif
PImage[] wave;
int frame;
PImage background;

//Font
PFont empire;

//Sounds
Minim minim;
AudioPlayer theme;
AudioPlayer victory;
AudioPlayer defeat;
AudioPlayer bounce;
AudioPlayer score1;
AudioPlayer life;

void setup() {
  brickd = 25;
  n = 65;
  x = new int [n];
  y = new int [n];
  alive = new boolean[n];
  
  tempx = 100;
  tempy = 100; 
  
 
 int i = 0;
  while( i < n) {
      x[i] = tempx;
      y[i] = tempy;
      alive[i] = true;
      tempx = tempx + 50;
      i ++;
  
    
  if (tempx == 750) {
     tempx = 100;
     tempy = tempy + 100;
    }
  }
  
  size(800, 800);
  mode = INTRO;
  
  //initalize paddle
  paddlex = 400;
  
  //initlize ball
  ballx = 400;
  bally = 600; 
  balld = 15;
  
  //Initlize velocity
  vx = random(-10, 10);
  vy = random(-10, 10);
  
  //Initialize keyboard variabless
  akey = dkey = false;
  
 //Time and points
 timer = 100;
 lives = 3;
 score = 0;
  
 //Load gif
 wave = new PImage[120];
 int ip = 0;
 while (ip < 120) {
 wave[ip] = loadImage("giphy-gif_"+ip+"_delay-0.03s.gif");
 ip = ip+ 1;
 }
 
 //Font
 empire = createFont("empire.ttf", 100); 
 
 //load Images
 background = loadImage("background.jpg");
 
 //Sound
 minim = new Minim(this);
 theme = minim.loadFile("theme.mp3");
 victory = minim.loadFile("victory.mp3");
 defeat = minim.loadFile("defeat.mp3");
 bounce = minim.loadFile("bounce.wav");
 score1 = minim.loadFile("score.wav");
 life = minim.loadFile("life.mp3");
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
