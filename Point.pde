class Point
{
  int size = 5;
  private int x,y;
  public Point(int x, int y, int size)
  {
    this.x = x;
    this.y = y;
    this.size = size;
  }
  
  public Point(int x, int y)
  {
    this.x = x;
    this.y = y;
  }
  
  
  public int getX()
  {
    return x;
  }
  public int getY()
  {
    return y;
  }
  
  public void write()
  {
    ellipse(x,y,size,size);
  }
  
  
}
