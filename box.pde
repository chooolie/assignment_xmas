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
    
  
 //making the walls impassible by the box sprite  
    
    if (keyPressed)
    {
      //up key
      if (key == 'w')
      {
        if(y<220 )
        {
          y= y+5;
        }
        if(y<610 && x>380 && x<550)
        {
          y=y+2;
        }
         if(x>550 && x<1030 && y<270)
        {
           y=y+2;
        }
        
        else
        {
          y= y-3;
        }      
            
      }//end up key
      
      
      //down key
      
      if (key == 's')
      {
     
        y= y+3;
      }//end down key
      
      
      //left key
      
      if (key == 'a')
       { 
         
         if(x>550 && x<560 && y<610 )
         {
          x=x+10;
        }
         if (x>0 && x <100 )
        {
          x=x+2;
        }
        else
        {
          x= x-3;
        }
        
      }//end left key
      
      
      //right key
      
      if (key == 'd')
      {
        if(x>380 && x<385  && y<610)
        {
          x=x-2;
        }
        
        else
        {
          x= x+3;
        }
        
      }//end right key
      
    }//end (key pressed)
    
  }//end update()
  
  void render()
  {
    stroke(127,255,212);
    fill(127,255,212);
    rect(x, y, 44, 44, 7);
    
  }  
  
  
}