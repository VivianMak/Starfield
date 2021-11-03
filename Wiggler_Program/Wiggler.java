class Wiggler
{
  private int myX, myY;
  public Wiggler()
  {
    myX = myY = 150;
  }
  public void wiggle()
  {
    myX+=(int)(Math.random()*5)-2;
  }
  
  // setter methods
  public void setY(int y)
  {
    myY = y;
  }
  
  // getter methods
  public int getX()
  {
    return myX;
  }
  public int getY()
  {
    return myY;
  }
}
