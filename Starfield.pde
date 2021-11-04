PImage dragonIMG;
Particle[] dragonParticles;

void setup()
{
  size(600,600);
  dragonIMG = loadImage("MCEnderDragon.png"); // ADD URL
  
  dragonParticles = new Particle [50];
  
  for(int i = 0; i < 10; i++)
    {dragonParticles[i] = new Oddball();}
    
  for(int i = 10; i < dragonParticles.length; i++)
    {dragonParticles[i] = new Particle();}
    
} // end setup

void draw()
{
  background(13, 19, 66);//image of end?
  for(int i = 0; i < dragonParticles.length; i++){
    dragonParticles[i].show();
    dragonParticles[i].move();
  }
  image(dragonIMG, 90,50, width/2, height/2);

}



class Particle
{
  double myX, myY;
  double mySpeed, myAngle;
  int myColor, mySize;
  
  Particle(){
    myX = myY = 300;
    mySpeed = (Math.random()*10)+1; 
    myAngle = Math.random()*2 * Math.PI;
    myColor = color(156,2,204);
    mySize = 10;
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
    rect((float)myX,(float)myY, mySize,mySize); //mySize
  } // end show function
  
}

class Oddball extends Particle //inherits from Particle
{
  Oddball(){
    //myX = (int)(Math.random()*600);
    //myY = (int)(Math.random()*600);
        myX = myY = 300;

    mySpeed = (Math.random()*15)+1; 
    myAngle = Math.random()*2 * Math.PI;
    myColor = color(154, 227, 222);
    mySize = 10;
  }
}
