// The class name starts with uppercase
class Ball
{
  //level 1 ball
  
  float x, y;
 
  //boolean AI;
 
  Ball()
  {
    x = 250;
    y = 500;
   
  } 
  
  
  //moving the Ball with w,a,s,d
  void update()
  {
    
  
 //making the walls impassible by the Ball sprite  
    
    if (keyPressed)
    {
      //up key
      if (key == 'w')
      {
        if(y<240 && x <610 )//block line 2
        {
          y= y+11;
        }
        if(y<640 && x>410 && x<575)// block line 4
        {
          y=y+11;
        }
         if(x>550 && x<1030 && y<290)//block line 6
        {
           y=y+11;
        }
        if(x>1030 && x<1510 && y<155)//block line 8
        {
           y=y+6;
        }
        
        else
        {
          y= y-5;
        }      
            
      }//end up key
      
      
      //down key
      
      if (key == 's')
      {
        if(y>760 && x>1195 && x< 1460)//block line 10
        {
          y= y-5;
        }
        if(y>170 && x>1062 && x< 1195)//block line 12
        {
          y= y-5;
        }
         if(y>580 && x> 600 && x<1112 )//block line 14
        {
          y= y-5;
        }
        if(y>710 && x> 100 && x<580 )//block line 16
        {
          y= y-6;
        }
        else
        {
          y= y+5;
        }
      }//end down key
      
      
      //left key
      
      if (key == 'a')
       {
          if (x>0 && x <130 )//block line 1
        {
          x=x+11;
        }
         
         if(x>550 && x<580 && y<620 )// block line 5
         {
          x=x+11;
         }
        
         if (y<265 && x<1055  )//block line 7
        {
          x=x+11;
        }
        
         if (y>220 && x>1190 && x<1195 )//block line 11
        {
          x=x+11;
        }
        
        else
        {
          x= x-5;
        }
        
      }//end left key
      
      
      //right key
      
      if (key == 'd')
      {
        
        if(x>400 && x<410  && y<610 && y>220)//block line 3
        {
          x=x-11;
        }
        
        if(x>1460)//block line 9
        {
          x=x-5;
        }
        if(x>1080 && x<1114 && y>190 && y<610)//block line 13
        {
          x=x-11;
        }
         if(x>600 && x<635 && y>580 && y<760)//block line 15
        {
          x=x-5;
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
    ellipse(x, y, 40, 40);
    
  }  
  
  
}