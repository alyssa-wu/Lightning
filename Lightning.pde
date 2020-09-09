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
  while (endX <= 300)
  {
    endX = startX + (int)(Math.random()*10);
    endY = startY + (int)(Math.random()*19)-10;
    line(startX,startY,endX,endY);
    startX = endX;
    startY = endY;
  }
}
void mousePressed()
{
  startX = 0;
  startY = 150;
  endX = 0;
  endY = 150;
}

