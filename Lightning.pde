PImage img; //Declare a var of the type Pimage
int startX = 101;
int startY = 185;
int endX = 101;
int endY = 185;
int r = (int)(Math.random()*256);
int g = (int)(Math.random()*256);
int b = (int)(Math.random()*256);

//coord of Zuko's finger is (101,185)

void setup()
{
  size(400,400);
  strokeWeight(2);
  background(57,126,130);
  img = loadImage("LightningBending.jpg");
}

void draw()
{ 
  
  fill(57,126,130,10);
  rect(0,0,400,400);
  while (endX <= 400)
  {
    stroke(255,255,255);
    endX = startX + (int)(Math.random()*10);
    endY = startY + (int)(Math.random()*19)-10;
    line(startX,startY,endX,endY);
    startX = endX;
    startY = endY;
  }
  //noStroke();
  img.resize(101,128);
  image(img,0,150);
  
  
  //showMouseCoordinates();
}
void mousePressed()
{
  startX = 101;
  startY = 185;
  endX = 101;
  endY = 185;
}


//void showMouseCoordinates() {
//  fill(255,0,0);
//  textSize(16);
//  text("("+round(mouseX)+","+round(mouseY)+")", mouseX-15, mouseY);
//}
