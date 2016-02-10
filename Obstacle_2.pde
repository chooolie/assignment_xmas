class Obstacle_2 
  {
    float x, y,x2,y2, x3,y3,x4,y4;
    float  x5,y5,x6,y6,y7,y8,x7,x8,y9,x9;
    int speed =5;
    int xspeed = 0;
    int yspeed = speed;
    
    int speed2 = 5;
    int xspeed2 = 0;
    int yspeed2 = speed2;
    
    int speed3 = 5;
    int xspeed3 = 0;
    int yspeed3 = speed3;
    
    int speed4 = 5;
    int xspeed4 = 0;
    int yspeed4 = speed4;
    
    int speed5 = 5;
    int xspeed5 = 0;
    int yspeed5 = speed5;



    Obstacle_2()
    {
      x = 680;
      y = 290;
    
      x2 = 780;
      y2 = 290; 
      
      x3= 730;
      y3 = 660;
      
      x4= 830;
      y4 = 660;
      
      x5=880;
      y5=290;
      
      x6=980;
      y6=290;
      
      x7=930;
      y7=660;
      
      x8=1030;
      y8=660;
      
      x9=1080;
      y9= 290;
      
      
    }
//moving balls up and down at speed chosen by user  
//for level 2
  void draw_balls()
  {
    stroke(255,20,147);
    fill(255,20,147);
    ellipse(x, y, 20,20);
    ellipse(x2, y2, 20,20);
    
    
   if (y <290)
    {
     
      xspeed = 0;
      yspeed = speed;
    
    }
     if (y > 660)
    {
      xspeed = 0;
      yspeed = -speed;
      y=660;
    }
    
    x += xspeed;
    y += yspeed;
    
    
   if (y2 <290)
    {
     
      xspeed = 0;
      yspeed = speed;
    
    }
     if (y2 > 660)
    {
      xspeed = 0;
      yspeed = -speed;
      y2=660;
    }
    
    x2 += xspeed;
    y2 += yspeed;
  
  }
  
  
  void draw_balls2()
  {
   stroke(255,20,147);
    fill(255,20,147);
    ellipse(x3, y3, 20,20);
    ellipse(x4, y4, 20,20);
  
    if (y3 <290)
    {
     
      xspeed2 = 0;
      yspeed2 = speed2;
    
    }
     if (y3 > 660)
    {
      xspeed2 = 0;
      yspeed2 = -speed2;
      y3=660;
    }
    
    x3 += xspeed2;
    y3 += yspeed2;
    
    if (y4 <290)
    {
     
      xspeed2 = 0;
      yspeed2 = speed2;
    
    }
     if (y4 > 660)
    {
      xspeed2 = 0;
      yspeed2 = -speed2;
      y4=660;
    }
    
    x4 += xspeed2;
    y4 += yspeed2;
    
    
  }
  
  
  
  void draw_balls3()
  {
   stroke(255,20,147);
    fill(255,20,147);
    ellipse(x5, y5, 20,20);
    ellipse(x6, y6, 20,20);
  
    if (y5 <290)
    {
     
      xspeed3 = 0;
      yspeed3 = speed3;
    
    }
     if (y5 > 660)
    {
      xspeed3 = 0;
      yspeed3 = -speed3;
      y5=660;
    }
    
    x5 += xspeed3;
    y5 += yspeed3;
    
    if (y6 <290)
    {
     
      xspeed3 = 0;
      yspeed3 = speed3;
    
    }
     if (y6 > 660)
    {
      xspeed3 = 0;
      yspeed3 = -speed3;
      y6=660;
    }
    
    x6 += xspeed3;
    y6 += yspeed3;
    
    
  }
  
  void draw_balls4()
  {
   stroke(255,20,147);
    fill(255,20,147);
    ellipse(x7, y7, 20,20);
    ellipse(x8, y8, 20,20);
  
    if (y7 <290)
    {
     
      xspeed4 = 0;
      yspeed4 = speed3;
    
    }
     if (y7 > 660)
    {
      xspeed4 = 0;
      yspeed4 = -speed4;
      y7=660;
    }
    
    x7 += xspeed4;
    y7 += yspeed4;
    
    if (y8 <290)
    {
     
      xspeed4 = 0;
      yspeed4 = speed4;
    
    }
     if (y8 > 660)
    {
      xspeed4 = 0;
      yspeed4 = -speed4;
      y8=660;
    }
    
    x8 += xspeed4;
    y8 += yspeed4;
    
    
  }
  
  
  void draw_balls5()
  {
   stroke(255,20,147);
    fill(255,20,147);
    ellipse(x9, y9, 20,20);
    //ellipse(x8, y8, 20,20);
  
    if (y9 <290)
    {
     
      xspeed5 = 0;
      yspeed5 = speed5;
    
    }
     if (y9 > 660)
    {
      xspeed5 = 0;
      yspeed5 = -speed5;
      y9=660;
    }
    
    x9 += xspeed5;
    y9 += yspeed5;
    
  
  }
  
}