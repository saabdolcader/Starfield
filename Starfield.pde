Particle [] parts = new Particle[800];
void setup()
{
  size(500,500);
  for (int i = 0; i < parts.length; i++)
   {
     parts[i] = new Particle();
   }
   parts[0] = new OddballParticle();
}
void draw()
{
  background(128,128,128);
  for (int j = 0; j < parts.length; j++)
   {
     parts[j].move();
     parts[j].show();
   }
}
class Particle
{
  double myX, myY, myAngle, mySpeed;
  int myColor;
  Particle() 
  {
    myX = 250;
    myY = 250;
    myAngle = (Math.random()*2)*Math.PI;
    mySpeed = Math.random()*10;
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256)); 
  }
  void move()
  {
    myX = myX + (Math.cos(myAngle)*mySpeed);
    myY = myY + (Math.sin(myAngle)*mySpeed);
  }
  void show()
  {
    strokeWeight(0.1);
    fill(myColor);
    ellipse((int)(myX),(int)(myY),5,5);
  }
}

class OddballParticle extends Particle
{
  OddballParticle()
  {
    myX = 250;
    myY = 250;
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256)); 
  }
  void move()
  {
    myX = myX + (int)(Math.random()*5) - 2;
    myY = myY + (int)(Math.random()*5) - 2;
  }
  void show()
  {
    fill(myColor);
    rect((int)(myX),(int)(myY),10,10);
  }
}
