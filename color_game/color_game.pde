//Marika h, 09.16.21, BLK 1-3;
//colorzone game

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer theme;



int mode;
final int INTRO = 0;
final int MOUSE = 1;
final int PRE = 2;
final int GAME = 3;
final int GAMEOVER = 4;

//gifs
PImage[] gif;
int numberOfFrames;
int fn;
int f;

PImage[] gif2;
int numberOfFrames1;
int fn1;
int f1;

PImage[] gif3;
int numberOfFrames2;
int fn2;
int f2;

PImage[] gif4;
int numberOfFrames3;
int fn3;
int f3;

PImage[] gif5;
int numberOfFrames4;
int fn4;
int f4;

//word array + color array 
String[] words;
int ran;

color[] colors;
int ran1;

int ranChance;


//intro rectangles movement
int widthr;
int begin;

//fonts
PFont fonti;
PFont fontb;
int textsize;

//images
PImage replay;
PImage end;
PImage overlay;
PImage arrow;


//timer for words
int fill;

//score
int score;
int highscore;

void setup (){
  size(800, 600);
 mode = INTRO;
 
 //words setup 
 words = new String[7];
 words [0] = "RED";
 words [1] = "ORANGE";
 words [2] = "YELLOW";
 words [3] = "GREEN";
 words [4] = "BLUE";
 words [5] = "PURPLE";
 words [6] = "WHITE";

 
 //colors setup 
  colors = new color[7];
colors [0] = color(#FF5252); //red
colors [1] = color(#FC8C03); //orange
colors [2] = color(#FCFF52); //yellow
colors [3] = color(#44C931); //green
colors [4] = color(#88B3FA); //blue
colors [5] = color(#E188FA); //purple
colors [6] = color(255);     //white

//chance
  ran = int(random (0, 7));
 ranChance = int(random (0,2));
  

 if (ranChance >= 1){
 while (ran == ran1){
 ran1 = int(random (0, 7));
 }
 }
 

if (ranChance <= 0);{
ran1 = ran;
 }

 
 //gif setup 
 int fn = 0;
 numberOfFrames = 9;
 gif = new PImage[numberOfFrames];
 while(fn<numberOfFrames){
gif[fn] = loadImage("frame_0"+fn+"_delay-0.04s.gif");
 fn = fn + 1;
 }
  int fn1 = 0;
 numberOfFrames1 = 23;
 gif2 = new PImage[numberOfFrames1];
 while(fn1<numberOfFrames1){
gif2[fn1] = loadImage("1frame_"+fn1+"_delay-0.04s.gif");
 fn1 = fn1 + 1;
 }
 
 int fn2 = 0;
 numberOfFrames2 = 5;
 gif3 = new PImage[numberOfFrames2];
 while(fn2<numberOfFrames2){
gif3[fn2] = loadImage("2frame_"+fn2+"_delay-0.09s.gif");
 fn2 = fn2 + 1;
 }
 
  int fn3 = 0;
 numberOfFrames3 = 5;
 gif4 = new PImage[numberOfFrames3];
 while(fn3<numberOfFrames3){
gif4[fn3] = loadImage("frame_"+fn3+"_delay-0.2s.gif");
 fn3 = fn3 + 1;
 }
 
   int fn4 = 0;
 numberOfFrames4 = 17;
 gif5 = new PImage[numberOfFrames4];
 while(fn4<numberOfFrames4){
gif5[fn4] = loadImage("frame_"+fn4+"_delay-0.05s.gif");
 fn4 = fn4 + 1;
 }
 
 
 
 
 
 
 //image setup
 
 replay = loadImage("replay.png");
 
 overlay = loadImage("overlay.png");
 
 arrow = loadImage("arrow.png");
 
 
 //movement setup
 widthr = 0;
 begin = 0;
 
 //timer fill
 fill = 0;
 //font setup 
 fonti = createFont("Quantum.ttf", 200);
 textsize = 1;
 
 //scores
 score = 0;
 highscore = 0;
 
 //music setup
  minim = new Minim (this);
  theme = minim.loadFile("theme.mp3");
  theme.play();
 
 
}

void draw(){
if (mode == INTRO){
intro();
}
else if (mode == MOUSE){
mousePressed();
}
else if (mode == GAME){
game();
}
else if (mode == GAMEOVER){
gameover();
}else if (mode == PRE){
pre();
}
else{println("Error: Mode = " + mode);}
}
