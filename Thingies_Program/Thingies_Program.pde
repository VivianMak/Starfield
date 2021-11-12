public void setup()
{
  Thingy bob = new Thingy();
  Thingy mary = new Thingy();
  bob.setmyX(30);
  bob.setmyY(30);
  mary.setmyX(70);
  mary.setmyY(70);
  System.out.println("Distance between bob and mary is " + dist(bob.getmyX(), bob.getmyY(), mary.getmyX(), mary.getmyY()));
}
