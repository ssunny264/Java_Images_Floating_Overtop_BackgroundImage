class jack {
  float x;
  float y;
  float xspeed;
  float yspeed;
  
  jack(float x, float y, float xspeed, float yspeed){
    this.x = x; 
    this.y = y;
    this.xspeed = xspeed;
    this.yspeed = yspeed;
  }
  void head(){
    
  //head
  fill(skin);
  noStroke();
  circle(x, y, 100);
  
  //eyes
  fill(eyes);
  ellipse(20+x, -10+y, 30, 35); //right (by looking at img)
  ellipse(-20+x, -10+y, 30, 35); //left 
  
  //nose
  stroke(0);
  strokeWeight(3);
  line(-3+x, 2+y, -6+x, 9+y);
  line(3+x, 2+y, 6+x, 9+y);
  
  //mouth
  fill(0);
  beginShape();
  vertex(-30+x,20+y);
  bezierVertex(-15+x,30+y, 22+x, 35+y, 30+x, 20+y);
  bezierVertex(30+x,20+y, 13+x, 65+y, -30+x, 20+y);
  endShape();
  
  stroke(0);
  strokeWeight(1);
  line(-25+x, 17+y, -29+x, 30+y); //far left line
  line(-20+x, 18+y, -25+x, 35+y);
  line(-13+x, 19+y, -17+x, 40+y);
  line(-7+x, 20+y, -11+x, 43+y);
  line(-1+x, 22+y, -1+x, 46+y); //middle line
  line(5+x, 22+y, 7+x, 46+y);
  line(12+x, 22+y, 15+x, 44+y);
  line(18+x, 21+y, 24+x, 39+y);
  line(24+x, 20+y, 29+x, 34+y); //far right line

//moving head across screen
  
  x += xspeed;
  y += yspeed;
  
  if (x+50 >= width) {
     xspeed =- xspeed;
     x = width - 50;
  }
  else if (x <= 0) {
     xspeed =- xspeed;
     x = 0;
  }
  if (y+50 >= height) {
     yspeed =- yspeed; 
     y = height - 50;
  }
  else if (y <= 0) {
     yspeed =- yspeed;
     y = 0;
  }
  
  
}
}
