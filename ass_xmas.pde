void setup()
{
  size(2000,1000);
  box = new Box();
  stage = new Stage();
  obstacle = new Obstacle();
  life_counter = 0;
  life = 10;

}

int life_counter, life;
Box box;
Stage stage;
Obstacle obstacle;

void draw()
{
  background(255,218,185);
  
  
  box.update();
  box.render();
  obstacle.draw_balls();
  obstacle.draw_balls2();
  stage.draw_stage();
  die();
  ends();
  
  
}

void die()
{
  
  if(dist(box.x, box.y, obstacle.x,obstacle.y)<=40)
  {
    life_counter++;
    
    
  }
  
  if(dist(box.x, box.y, obstacle.x2,obstacle.y2)<=40)
  {
    life_counter++;
    
  }
  if(dist(box.x, box.y, obstacle.x3,obstacle.y3)<=40)
  {
    life_counter++;
    
  }
  if(dist(box.x, box.y, obstacle.x4,obstacle.y4)<=40)
  {
    life_counter++;
   
  }
  
  
}