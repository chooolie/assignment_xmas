class Obstacle 
{
    float x, y,x2,y2, x3,y3,x4,y4;
    int speed =5;
    int xspeed = speed;
    int yspeed = 0;
    
    int speed2 = 5;
    int xspeed2 = speed2;
    int yspeed2 = 0;



  Obstacle()
  {
    //position of 4 obstacles
    x = 580;
    y = 310;
  
    x2 = 580;
    y2 = 474; 
    
    x3= 1082;
    y3 = 392;
    
    x4= 1082;
    y4 = 556;
  }

void draw_balls()
{
  stroke(255,20,147);
  fill(255,20,147);
  ellipse(x, y, 40,40);
  ellipse(x2, y2, 40,40);
  
//moving balls up and down at speed chosen by user  
 if (x >1080 )
  {
    xspeed = -speed;
    yspeed = 0;
    //x =  15;
  }
   if (x < 580)
  {
    xspeed = speed;
    yspeed = 0;
    x = 590-15;
  }
  
  x += xspeed;
  y += yspeed;  
  
  
   if (x2 >1080 )
  {
    xspeed = -speed;
    yspeed = 0;
    //x =  15;
  }
   if (x2 < 580)
  {
    xspeed = speed;
    yspeed = 0;
    x2 = 590-15;
  }
  
  x2 += xspeed;
  y2 += yspeed; 
  //println(x + ", " + y);
  
}

void draw_balls2()
{
  
  stroke(255,20,147);
  fill(255,20,147);
  ellipse(x3, y3, 40,40);
  ellipse(x4, y4, 40,40);
  
//moving balls up and down at speed chosen by user    
 if (x3 >1080 )
  {
    xspeed2 = -speed2;
    yspeed2 = 0;
    //x =  15;
  }
   if (x3 < 580)
  {
    xspeed2 = speed2;
    yspeed2 = 0;
    x3 = 590-15;
  }
  
  x3 += xspeed2;
  y3 += yspeed2;  
  
  
   if (x4 >1080 )
  {
    xspeed2 = -speed2;
    yspeed2 = 0;
    //x =  15;
  }
   if (x4 < 580)
  {
    xspeed2 = speed2;
    yspeed2 = 0;
    x4 = 590-15;
  }
  
  x4 += xspeed2;
  y4 += yspeed2; 
  //println(x + ", " + y);
  
}

}