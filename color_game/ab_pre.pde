void pre(){


//gif 

image(gif2[f1], 0, 0, width, height);
f1 = f1 + 1;
if (f1 == numberOfFrames1) f1 = 0;

//instructions
fill(255);
stroke(0);
quad(100, 10, 700, 10, 650, 100, 50, 100);
textFont(fonti);
textSize(70);
fill(255, 0, 0);
text("objective:", 210, 70);
textSize(textsize);
textsize = textsize + 1;
fill(255);
text("See if the words colour matches the word", 7, 200);
text("Click either true or false", 7, 250);
text("There is a time limit per word", 7, 300);
text("You only have 1 life", 7, 350);
text("Press the arrow to begin", 7, 400);
if (textsize > 30) textsize = 30;

//button tactile
fill(255);
if (mouseX > 600 && mouseX < 690 && mouseY > 240 && mouseY < 330){
stroke(255);
}else stroke(0);
rect(600, 240, 90, 90);
image(arrow, 610, 250, 70, 70);

//planets 
image(gif4[f3], 10, 420, 200, 200);
f3 = f3 + 1;
if (f3 == numberOfFrames3) f3 = 0;

image(gif4[f3], 600, 420, 200, 200);
if (f3 == numberOfFrames3) f3 = 0;

image(gif4[f3], 300, 420, 200, 200);
if (f3 == numberOfFrames3) f3 = 0;

}

void preClicks(){
if (mouseX > 600 && mouseX < 690 && mouseY > 240 && mouseY < 330){
mode = GAME;
}
}
