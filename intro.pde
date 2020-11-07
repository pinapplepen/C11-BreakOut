void intro() {
  image(wave[frame], 0, 0, width, height);
  frame = frame + 1;
  if (frame == 120) frame = 0;
  textSize(25);
  text("CLICK ANYWHERE TO START", 225, 500);
  
  //Title
   textSize(100);
   textFont(empire);
   text("BREAK OUT", 110, 350);
   
  //Music
  theme.play();
  victory.rewind();
  victory.pause();
  defeat.rewind();
  defeat.pause();
  
  //Reset Keys
  akey = false;
  dkey = false;
  
}



void introClicks() {
    mode = GAME;
 
}
