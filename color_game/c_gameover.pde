void gameover(){
  
  
 
 image(gif5[f4], 0, 0, width, height);
f4 = f4 + 1;
if (f4 == numberOfFrames4) f4 = 0;

//ytext display
textFont(fonti);
textSize(60);
textAlign(CORNER);
text("GAME OVER", 350, 200);
if (score > highscore){
highscore = score;
}
textSize(30);
text("Score:"+score, 350, 250);
text("Highscore:" + highscore, 350, 300);

tint(255);
//replay button
fill(255);
rect(150, 170, 120, 120, 7);
image(replay, 160, 180, 100, 100);



}

void gameoverClicks(){
  textAlign(CORNER);
  if (mouseX > 150 && mouseX < 270 && mouseY > 170 && mouseY < 290){
mode = INTRO;
 widthr = 0;
 begin = 0;
 fill = 0;
 textsize = 1;
 score = 0;
}
  
}
