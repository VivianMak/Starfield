PImage dragonIMG;
Particle[] dragonParticles;

void setup()
{
  size(600,600);
  //dragonIMG = loadImage(""); // ADD URL
  dragonParticles = new Particle [250];
  for(int i = 0; i < dragonParticles.length; i++)
    {dragonParticles[i] = new Particle();}
} // end setup

void draw()
{
  background(0);//image of end?
  for(int i = 0; i < dragonParticles.length; i++){
    dragonParticles[i].show();
    dragonParticles[i].move();
  }
}



class Particle
{
  double myX, myY;
  double mySpeed, myAngle;
  int myColor;
  
  Particle(){
    myX = myY = 300;
    mySpeed = (Math.random()*10)+1; 
    myAngle = Math.random()*2 * Math.PI;
    myColor = color(156,2,204);
  } // end class constructor
  
  void move(){
    // random moving space
    myX = myX + mySpeed * Math.cos(myAngle);
    myY = myY + mySpeed * Math.sin(myAngle);
    
    // reset + make it slower
    // cause dragonbreath do be lasting forever
    if((myX < 0 || myX > 600)&&(myY < 0 || myY > 600)){
      myX = myY = 300;
      mySpeed = (Math.random()*8)+1;
    }

    
  } // end move function
  
  void show(){
    fill(myColor);
    rect((float)myX,(float)myY, 10,10); //mySize
  } // end show function
  
}

class OddballParticle //inherits from Particle
{
  //your code here
}
