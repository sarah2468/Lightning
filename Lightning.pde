int startX = 100;
int startY = 280;
int endX = 100;
int endY = 280;
void setup()
{
  size(500, 500);
  noLoop();
  strokeWeight(5);
  background(#8AC6BC);
}

void draw()
{
  hotDog(100, 250);
  stroke((int)(Math.random()*256), 0, 0);
  while(endX < 300){
    endX = startX + (int)(Math.random()*10);
    endY = startY + (int)(Math.random()*20)-9;
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
}

void hotDog(int a, int o) {
  noStroke();
  fill(#FFEBC6);
  rect(a, o-30, 300, 100,30);
  rect(a, o, 300, 100, 30);
  fill(#7E6746);
  rect(a, o-5, 300, 80,30);
  fill(#745E3F);
  rect(a, o-5, 300, 80*0.75,30);
}

void mousePressed()
{
  redraw();
  startX = 150;
  startY = 300;
  endX = 150;
  endY = 300;
}