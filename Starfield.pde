void setup()
{
  size(400,400);
  noStroke();
  for (int i = 0; i < part.length; i++){
    part[i] = new Particle();
  }
}

class Particle
{
  double myAngle, mySpeed, myX, myY, myC;
  Particle() {
    myAngle = (Math.random()*2*PI);
    mySpeed = (Math.random()*10);
    myX = 200;
    myY = 200;
    
    myC = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }
  void show()
  {
    fill((int)myC);
    ellipse((float)myX, (float)myY, 5, 5);
  }
  void move() {
    myX += Math.cos(myAngle) * mySpeed;
    myY += Math.sin(myAngle) * mySpeed;
  }
}
Particle [] part = new Particle[1000];

void draw() {
  background(0);
  for (int i = 0; i < part.length; i++){
    part[i].move();
    part[i].show();
  }
}
class OddballParticle //inherits from Particle
{
  //your code here
}
