public void setup()
{
 Doodad one = new Doodad();
 Doodad two = new Doodad();
 //one.myNum = 3.14159;
 one.setNum(3.14159);
 //two.myNum = 2.71828;
 two.setNum(2.71828);
 //System.out.println("Sum is " + (one.myNum + two.myNum));
 System.out.println("Sum is " + (one.getNum() + two.getNum()));
}
