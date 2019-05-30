int sizeX = 500, sizeY = 500;
Point CurrentPoint, a,b,c;
Point StartingPoint;
Point ChoosePoint()
{
  int X,Y;
  int rnd = (int) random(1,7);
  if(rnd == 1 || rnd == 2)
    {
      fill(0,0,255);
      X = 0;
      Y = sizeY;
    }
  else if (rnd == 3|| rnd == 4)
    {
      fill(0,255,0);
      X = sizeX;
      Y = sizeY;
    }
  else
    {
      fill(255,0,0);
      X = sizeX/2;
      Y = 0;
    }
    
 return new Point(X,Y);
}

void setup()
{
  size(500,500);
  background(0);
  a = new Point(0,sizeY);
  b = new Point(sizeX,sizeY);
  c = new Point(sizeX/2,0);
  
  a.write();
  b.write();
  c.write();
  
  StartingPoint = ChoosePoint();
}
void draw()
{
  Point point = ChoosePoint();
  
  int x = (int)lerp(StartingPoint.getX(),point.getX(),0.5);
  int y = (int)lerp(StartingPoint.getY(),point.getY(),0.5);
  StartingPoint = new Point(x,y);
  
  StartingPoint.write();
    
  delay(2);
}
