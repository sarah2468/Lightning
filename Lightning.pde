int startX = 0;
int startY = 250;
int endX = 0;
int endY = 250;
void setup()
{
  size(500, 500);
  noLoop();
  strokeWeight(5);
  background(80);
}

void draw()
{
  stroke((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  while(endX < 500){
 
    endX = startX + (int)(Math.random()*10);
    endY = startY + (int)(Math.random()*20)-9;
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
}

void mousePressed()
{
  redraw();
  startX = 0;
  startY = 250;
  endX = 0;
  endY = 250;
}