Particle[] stars; // declaring array

void setup(){
  size(400,400);
  stars = new Particle[100]; //initializing array
  for(int i = 0; i < stars.length; i++)
    stars[i] = new Particle(); //initializing the elements
}

void draw(){
  background(0);
  for(int i = 0; i < stars.length; i++){
    stars[i].move();
    stars[i].show();
  }
}

class Particle {
  double myX,myY,myAngle,mySpeed;
  int myColor;
  Particle (){
   myX = myY = 200;
   myAngle = Math.random()*4 * Math.PI;
   mySpeed = Math.random()*10;
   myColor = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  } // end constructor
 
  void move(){
   myX = myX + mySpeed + myAngle;
   myY = myY + mySpeed + myAngle; //Math.sin(2.03) * 8.25;
  } // end move
 
  void show(){
   noStroke();
   fill(myColor);
   ellipse((float)myX, (float)myY, 10,10);
  } // end show
} // end class particle
