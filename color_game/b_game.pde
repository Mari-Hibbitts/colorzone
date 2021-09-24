void game(){
//background gif 
image(gif3[f2], 0, 0, width, height);
f2 = f2 + 1;
if (f2 == numberOfFrames2) f2 = 0;

//true false 
fill(255);
rect(50, 40, 700, 170, 7);
rect(50, 390, 700, 170, 7);
textAlign(CENTER);
fill(0);
text("TRUE", 400, 165 );
text("FALSE", 400, 515 );

//displaying words
textSize(100);
fill(255);
fill(colors[ran1]);
text(words[ran], 400, 340);


//time limit displays 
fill(255);
rect(5, 10, 10, 580);
rect(785, 10, 10, 580);
//fill up displays
fill(255, 0, 0);
rect(5, 10, 10, fill);
rect(785, 10, 10, fill);
fill = fill + 15;
if (fill > 600){
mode = GAMEOVER;
}
println(ranChance, ran, ran1);
}




void gameClicks(){
  
   if (mouseX > 50 && mouseX < 750 && mouseY > 40 && mouseY < 210){
  if (ran == ran1){
    ranChance = int(random(0,2));
    ran1 = int(random (0, 6));
     ran = int(random (0, 6));
     score = score + 1;
    mode = GAME;
  fill = 0;}
    else{mode = GAMEOVER;}
}

 if (mouseX > 50 && mouseX < 750 && mouseY > 390 && mouseY < 560){
 if (ran != ran1){
   ranChance = int(random(0,2));
    ran1 = int(random (0, 6));
     ran = int(random (0, 6));
        score = score + 1;
    mode = GAME;
  fill = 0;}
    else{mode = GAMEOVER;}
 }


}
