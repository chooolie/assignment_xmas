// The class name starts with uppercase
class Ball2
{
  //level 2 ball
  float x, y;
 
  //boolean AI;
 
  Ball2()
  {
    //satrting points
    x = 550;
    y = 480;
   
  } 
  
  
  //moving the Ball with w,a,s,d
  void update()
  {
    
  
 //making the walls impassible by the Ball sprite  
    
    if (keyPressed)
    {
      //up key
      //blocking up
      if (key == 'w')
      {
        if(y<280 && x>650 && x<1150 )
        {
          y= y+5;
        }
        if(x<650 && y<440)
        {
          y= y+5;
        }
         if(x>1150 && y<440)
        {
          y= y+5;
        }        
            
        else
        {
          y= y-5;
        }      
            
      }//end up key
      
      
      //down key
      //blocking down
      
      if (key == 's')
      {
        if(y>660 )//block line 10
        {
          y= y-5;
        }
        if(y>510 && x <670 )
        {
          y= y-5;
        }
        
        if(y>510 && x >1150 )
        {
          y= y-5;
        }
        
        else
        {
          y= y+5;
        }
      }//end down key
      
      
      //left key
      //blocking left side
      
      if (key == 'a')
       {
           
        if(x<540)
        {
          x=x+5;
        }
        if(x>680 && x<690 && y<440 )
        {
          x=x+5;
        }
        if(x>680 && x<690 && y>525 )
        {
          x=x+5;
        }
        else
        {
          x= x-5;
        }
        
      }//end left key
      
      
      //right key
      //blocking right side
      
      if (key == 'd')
      {
        if(x>1130 && x<1140 && y<440 )
        {
           x=x-11;
        }
        
        if(x>1130 && x<1140 && y>525 )
        {
           x=x-11;
        }
      
        
        if(x>1270 )
        {
          x=x-11;
        }
        
        else
        {
          x= x+5;
        }
        
      }//end right key
      
    }//end (key pressed)
    
  }//end update()
  
  void render()
  {
    stroke(127,255,212);
    fill(127,255,212);
    ellipse(x, y, 20, 20);
    
  }  
  
  
}