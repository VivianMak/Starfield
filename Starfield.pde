PImage dragonIMG;
Particle[] dragonParticles;

void setup()
{
  size(500,500);
  //dragonIMG = loadImage(""); // ADD URL
  dragonParticles = new Particle [100];
  for(int i = 0; i < dragonParticles.lenght; i++)
    {dragonParticles[i] = new Particle();}
} // end setup

void draw()
{
  background(0);//image of end?
  for(int i = 0; i < dragonParticles.lenght; i++){
    dragonParticles[i].show();
    dragonParticles[i].move();
  }
}



class Particle
{
  int myX, myY;
  int mySize, mySpeed, myAngle; // add more?
  
  Particle(){
    myX = myY = 250;
    mySize = 
    mySpeed = (int)(Math.random()*8)+1; 
    myAngle = 
  } // end class constructor
  
  void move(){
    myX = myX + mySpeed + myAngle;
    myY = myY + mySpeed + myAngle;
  } // end move function
  
  void show(){
    fill(156,2,204);
    rect(myX,myY, 5,5); // mySize, mySize 
  } // end show function
  
}

class OddballParticle //inherits from Particle
{
  //your code here
}
