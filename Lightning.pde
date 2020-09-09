int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;
int r = (int)(Math.random()*256);
int g = (int)(Math.random()*256);
int b = (int)(Math.random()*256);

void setup()
{
  size(300,300);
  strokeWeight(2);
  background(0,0,60);
}

void draw()
{
  stroke(r,g,b);
  ellipse(150,150,30,30);
}
void mousePressed()
{

}

