PImage img; //Declare a var of the type Pimage
int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;
int r = (int)(Math.random()*256);
int g = (int)(Math.random()*256);
int b = (int)(Math.random()*256);

void setup()
{
  size(400,400);
  strokeWeight(2);
  background(0,0,60);
  img = loadImage("LightningBending.png");
}

void draw()
{
  //background(0,0,60);
  stroke(r,g,b);
  while (endX <= 300)
  {
    endX = startX + (int)(Math.random()*10);
    endY = startY + (int)(Math.random()*19)-10;
    line(startX,startY,endX,endY);
    startX = endX;
    startY = endY;
  }
  image(img,300,150); //Draw image to screen at coord (0,0)
  //showMouseCoordinates();
}
void mousePressed()
{
  startX = 0;
  startY = 150;
  endX = 0;
  endY = 150;
}

//void showMouseCoordinates() {
//  fill(255,0,0);
//  textSize(16);
//  text("("+round(mouseX)+","+round(mouseY)+")", mouseX-15, mouseY);
//}
