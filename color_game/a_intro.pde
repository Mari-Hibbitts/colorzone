void intro(){
  
image(gif[f], 0, -30, width, 950);
f = f + 1;
if (f == numberOfFrames) f = 0;

fill(#A8C3C4);
stroke(255);
strokeWeight(4);
rect(-10, 150, widthr, 100);
//begin button
rect(300, 400, begin, 100); 
//rect movement 
widthr = widthr + 15;
if (widthr > 620) widthr = 620;



begin = begin + 12;
if (begin > 600)begin = 600;
 image(overlay, 0, 0);

  textFont(fonti);
  textSize(100);
  fill(#BA66F7);
  text("colorzone", 50, 225);
  textSize(50);
  text("enter the game", 355, 465);
  
  
 
}

void introClicks(){
if (mouseX > 300 && mouseX < 800 && mouseY > 400 && mouseY < 500)
  mode = PRE;

}
