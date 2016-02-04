void setup()
{
  size(2000,1000);
  box = new Box();
  
  x = 580;
y = 310;

x2 = 580;
y2 = 510;
  




}

float x, y,x2,y2;
int speed = 5;
int xspeed = speed;
int yspeed = 0;
Box box;

void draw()
{
  background(255,218,185);
  
  
  box.update();
  box.render();
  
   loadPixels();
     
   for(int x_var = 0;x_var< 250-1;x_var++)
   {
     for(int y_var = 0;y_var< 500-1;y_var++)
     {
       int loc1 = x_var + y_var *250;
       int loc2 = (x_var + 1)  + y_var *250;
       
       float b1 = pixels[loc1];
       float b2 = pixels[loc2];
       
       float diff = abs(b1-b2);
       pixels[loc1]= color(diff);
       
       
     }
   }
       
 
  
  draw_stage();
  draw_balls();
 
  
}


void draw_stage()
{
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
  
}

void draw_balls()
{
  stroke(255,20,147);
  fill(255,20,147);
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