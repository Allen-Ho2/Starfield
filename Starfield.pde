//your code here
Particle[] dots;
void setup()
{
   size (300, 300);
  dots = new Particle[5000];
  for (int i=0;i<dots.length;i++) {
   dots[i]= new Particle();
  }
   dots[0]= new OddballParticle();
}
  //your code here
void draw()
{
  background(0);
    for (int i=0;i<dots.length;i++) {
    dots[i].move();
    dots[i].show();
  }
  //your code here
}
class Particle
{
  //your code here
  double myX,myY,mySpeed,myAngle;
  int myColor;
  Particle(){
    myX = myY = 150;
    myAngle =Math.random()*360*Math.PI;
    mySpeed =Math.random()*10;
    myColor =color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  }
  void move(){ 
    myX = myX + mySpeed*Math.cos(myAngle);
    myY = myY + mySpeed*Math.sin(myAngle);
  }
   void show() {
    fill(myColor);
    square((float)myX, (float)myY, 5);
  }
}
class OddballParticle extends Particle
{
  OddballParticle()//inherit from Particle 
  {
    myX = 150;
    myY = 150;
    myColor = color(256,256,256);
    myAngle = (Math.random()*360*Math.PI);
    mySpeed = Math.random()*2;
  }
  void show() 
  {
    fill(myColor);
    ellipse((float)myY, (float)myY, 20, 20);
  }
  void move() 
  {
    myX = myX + (int)(Math.random()*5)-5;
    myY = myY + (int)(Math.random()*3)-1;
  }
}
