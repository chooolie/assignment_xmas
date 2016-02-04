void setup()
{
  size(2000, 1000);
  
  stroke(255);
  fill(0);
  
   x = 580;
   y = 310;
   
   x2 = 580;
   y2 = 510;
 
}

float x, y,x2,y2;
int speed = 5;
int xspeed = speed;
int yspeed = 0;


void draw()
{ 
  background(0);
     stroke(148,0,211);
  //draw stage
  strokeWeight(10);
  line(100,220,100,760);
  line(100,220,430,220);
  line(430,220,430,610);
  line(430,610,550,610);
  line(550,610,550,265);
  line(550,265,1030,265);
  line(1030,265,1030,130);
  line(1030,130,1510,130);
  line(1510,130,1510,760);
  line(1510,760,1195,760);
  line(1195,760,1195,220);
  line(1195,220,1112,220);
  line(1112,220,1112,610);
  line(632,610,1112,610);
  line(100,760,632,760);
  line(632,760,632,610);
  
  
  ellipse(x, y, 30,30);
  ellipse(x2, y2, 30,30);
  
  
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
  println(x + ", " + y);

}