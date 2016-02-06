// The class name starts with uppercase
class Box
{
  
  float x, y;
 
  
 
  Box()
  {
    x = 250;
    y = 500;
   
  }  
  //moving the box with w,a,s,d
  void update()
  {
    if (keyPressed)
    {
      if (key == 'w')
      {
        y= y-3;
      }
      if (key == 's')
      {
        y= y+3;
      }
      if (key == 'a')
      {
        x= x-3;
      }
      if (key == 'd')
      {
        x= x+3;
      }
      
    }
  }
  
  void render()
  {
    stroke(127,255,212);
    fill(127,255,212);
    rect(x, y, 44, 44, 7);
    
  }  
  
  
}