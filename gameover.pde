void gameover(){
  image(background,0, 0, 800, 800);
  textSize(25);
  text("CLICK ANYWHERE TO RETURN TO MENU", 135, 500);
  
  if (lives == 0) {
    textFont(empire);
    fill(255);
    textSize(100);
    text("YOU LOST!", 120, 300);
    theme.pause();
    theme.rewind();
    defeat.play();
  }
  
  if (score == n) {
    textFont(empire);
    fill(255);
    textSize(100);
    text("YOU WON!", 110, 300);
    theme.pause();
    theme.rewind();
    victory.play();
  }
  

}

void gameoverClicks(){

  //Reset 
  int i = 0; 
  while(i < n) {
  if ((score == n || (lives == 0))) {  
  alive[i] = true;
  i = i + 1;
   }
 }
   mode = INTRO;
   score = 0;
   lives = 3;
   n = 65;
   paddlex = 400;
  }
