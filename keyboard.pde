void keyPressed() {
  if (mode == INTRO) {
    //introKBP();
  } else if (mode == GAME) {
    gameKBP();
  } else if (mode == PAUSE) {
    //pauseKBP();
  } else if (mode == GAMEOVER) {
    //gameoverKBP();
  }
  
 
}

void keyReleased() {
  if (mode == INTRO) {
    //introKBR();
  } else if (mode == GAME) {
    gameKBR();
  } else if (mode == PAUSE) {
    //pauseKBR();
  } else if (mode == GAMEOVER) {
    //gameoverKBR();
  }
  //if (key == 'a' || key == 'A') akey = false;
  //if (key == 'd' || key == 'D') dkey = false;
  
}
