void mousePressed (){

if (mode == GAME){
gameClicks();
}
}

void mouseClicked(){
  
  if (mode == INTRO){
introClicks();
}
if (mode == PRE){
preClicks();
}

if (mode == GAMEOVER){
gameoverClicks();
}
}
