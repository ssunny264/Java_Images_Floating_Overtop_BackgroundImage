/*
Sara Sunny
Date: 10/22/21

Project Description: This program has an image brought in as a
Halloween theme. One of main characters heads has been created in a separate class 
named "jack." Function bounce calls jack and moves the head around the screen in 
front of the background image. When mouse is pressed the heads eyes are changed 
to random shades of grey. Music from movie playing in the background.

Color Scheme: Skin (230,227,227), Detail Lines (0,0,0), Eyes randomly selected grey between 0-210 
*/

import processing.sound.*;
SoundFile song;

color skin = color(230, 277, 277); 
color eyes = color(0,0,0);

PImage img;

float x=0;
float y=0;
float i=0;
float j=300;

jack head = new jack(x,y,3,2);
jack head2 = new jack(i,j,2,1);
jack head3 = new jack(300,0,4,3);

void setup() {
  size (800, 770);
  background(10, 10, 10);
  img = loadImage("background.jpg");
  
  song = new SoundFile(this, "Halloween.wav"); //background song
  song.play();
  song.loop();
}  

void draw() {
  image(img, 0, 0); //background image
  head.head();
  head2.head();
  head3.head();
  
} 

//method to change eye color when mouse is pressed
void mouseReleased() {
   int e = (int)random(210);
   eyes = (e);
}
