void setup()
{
  size(2000,1000);
  box = new Box();
}


Box box;

void draw()
{
  background(255,218,185);
  draw_stage();
  box.update();
  box.render();
  
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