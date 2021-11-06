PImage dragonIMG;
PImage towerIMG;
PImage endPoem1;
PImage endPoem2;
//PImage egg;

// variables for lightning
int startX = 150;
int startY = 400;
int endX = 0;
int endY = 150;

// attract a diamond sword??

// score for more details
int score = 10;

// declare array
Particle[] dragonParticles;

void setup()
{
  size(600,600);
  dragonIMG = loadImage("MCEnderDragon.png");
  towerIMG = loadImage("MCEndTower.png");
  endPoem1 = loadImage("MCEndPoem1.jpg");
  endPoem2 = loadImage("MCEndPoem2.png");
  //egg = loadImage("MCDragonEgg.png");
  
  
  // initialize array part
  dragonParticles = new Particle [150];
  for(int i = 0; i < 5; i++)
  {dragonParticles[i] = new Oddball();}
  for(int i = 5; i < dragonParticles.length; i++)
    {dragonParticles[i] = new Particle();}
    
} // end setup

void draw()
{
  
  if(score > 0){
    //noStroke();
    background(13, 19, 66);// color of mc void
    
    // display text
    textSize(30);
    fill(255);
    text("HEALTH: " + score,400,580);
    
    /*
    headshot guidlines:
    line(470,0,470,600);
    line(400,0,400,600);
    line(0,200,600,200);
    line(0,250,600,250);
    */
    
    // show the particles
    for(int i = 0; i < dragonParticles.length; i++){
      noStroke();
      dragonParticles[i].show();
      dragonParticles[i].move();
    }
    // show the images
    image(dragonIMG, 10,10, width, height/2);
    image(towerIMG, -10,330, width/2.5, height/2);
    
    // lightning code
    strokeWeight((int)(Math.random()*6)+1);
    stroke(188, 195, 207);
    while (startX < 500) {
      endX = startX + (int)(Math.random()*25)-10;
      endY = startY + (int)(Math.random()*10)-9;
      line(startX, startY, endX, endY);
      startX = endX;
      startY = endY;
    }
  }
  if(score <= 0){
      background(0);
      textSize(30);
      text("MC End Poem", 200, 35);
      image(endPoem1, 0,35, width, height/2);
      image(endPoem2, 0,335, width, height/2);
      

      // then display end poem
    }

} // end draw

void mousePressed() {

  if((mouseX > 400 && mouseX < 470) && (mouseY > 200 && mouseY < 250)){
    score-=5;
  }

  startX = 150;
  startY = 400;
  endX = 0;
  endY = 150;
  redraw();
  score++;
}



class Particle
{
  double myX, myY;
  double mySpeed, myAngle;
  int myColor, mySize;
  //PImage egg;
  
  Particle(){
    
    myX = 475;
    myY = 300;
    mySpeed = (Math.random()*10)+1; 
    myAngle = Math.random()*2 * Math.PI;
    myColor = color(156,2,204);
    mySize = 10;

    //egg = loadImage("MCDragonEgg.png");
    
  } // end class constructor
  
  void move(){
    // random moving space
    myX = myX + mySpeed * Math.cos(myAngle);
    myY = myY + mySpeed * Math.sin(myAngle);
    
    // reset + make it slower
    // cause dragonbreath do be lasting forever
    if((myX < 0 || myX > 600)&&(myY < 0 || myY > 600)){
      myX = 475;
      myY = 300;
      mySpeed = (Math.random()*8)+1;
    }
    
  } // end move function
  
  void show(){
    //image(egg, (float)myX,(float)myY, width/10, height/10);
    
    fill(myColor);
    rect((float)myX,(float)myY, mySize,mySize); //mySize
    
  } // end show function
  
}

class Oddball extends Particle //inherits from Particle
{
  Oddball(){
    
    myX = 475;
    myY = 300;
    mySpeed = (Math.random()*15)+1; 
    myAngle = Math.random()*2 * Math.PI;
    myColor = color(236,171,30);
    mySize = 20;
    //egg = loadImage("MCDragonEgg.png");
    //image(egg, (float)myX,(float)myY, width/10, height/10);
    
  }
}
