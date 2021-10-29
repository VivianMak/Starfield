Clouds[] c;

void setup(){
  size(300,300);
  c = new Clouds[100];
  for(int i = 0; i < 10; i++){
   c[i] = new StormCloud(); 
  }
  for(int i=0; i<c.length; i++){
    c[i] = new Clouds();
  }
}

void draw(){
  background(93, 102, 156);
  fill(78, 237, 78);
  noStroke();
  rect(0,275, 300,30);
  for(int i=0; i<c.length; i++){
    c[i].show();
    c[i].drift();
  }
}

class Clouds{
  
  int myX, myY, myWidth, myHeight;
  int myColor, mySpeed, myOpacity; // member variables
  
  Clouds(){
   myX = (int)(Math.random()*150);
   myY = (int)(Math.random()*50)+80;
   myWidth = (int)(Math.random()*10)+150;
   myHeight = (int)(Math.random()*50)+50;
   myColor = (int)(Math.random()*30)+220;
   mySpeed = 1;
   myOpacity = (int)(Math.random()*60)+60; 
  }
  
  void drift(){
    myX = myX + mySpeed;
    if(myX >= 300){
     myX = -150; 
    }
  } // end drift
  
  void show(){
    noStroke();
    fill(myColor, myOpacity);
    ellipse(myX, myY, myWidth, myHeight);
  } // end show
} // end class clouds

class StormCloud extends Clouds {
  StormCloud(){
     myX = (int)(Math.random()*100)+380;
     myY = (int)(Math.random()*30)+40;
     myWidth = (int)(Math.random()*80)+160;
     myHeight = (int)(Math.random()*40)+40;
     myColor = 200; //(int)(Math.random()*60)+200;
     mySpeed = 1;
     myOpacity = (int)(Math.random()*20)+80;
  }
}
