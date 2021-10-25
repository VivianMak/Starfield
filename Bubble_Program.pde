Bubble[] boop;
void setup(){
  size(300,300);
  boop = new Bubble[100];
  for(int i = 0; i < boop.length; i++){
   boop[i] = new Bubble(); 
  }
}
void draw(){
  background(0);
  fill(50,50,50,10);
  rect(0,0,300,300);
  for(int i = 0; i < boop.length; i++){
   boop[i].move(); 
   boop[i].show();
  }
}

class Bubble{
  
  int myColor, mySize;
  float myX, myY, speed;
  Bubble(){
   myColor = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
   mySize = (int)(Math.random()*20)+10;
   myX = (int)(Math.random()*255);
   myY = 300.0;
   speed = mySize/10;
  }// end constructor
  
  void show(){
   noStroke();
   fill(myColor);
   ellipse(myX,myY, mySize,mySize);
  } // end show()
  
  void move(){
   myX = myX + (int)(Math.random()*3)+1; 
   myY = myY + (int)(Math.random()*3)-5 - speed;
   if(myY <=0){
     myY = 300;
   }
  } // end move ()
  
  
}
// end class bubble
