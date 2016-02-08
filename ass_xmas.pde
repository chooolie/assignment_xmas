void setup()
{
  size(2000,1000);
  box = new Box();
  stage = new Stage();
  obstacle = new Obstacle();
  life_counter = 9;
  lives = 0;
  

}
int lives;
int life_counter, life;
Box box;
Stage stage;
Obstacle obstacle;

void draw()
{
  
  if(life_counter >= lives)
  {
  background(255,218,185);
  
  stroke(127,255,212);
  textSize(40);
  text("Lifes = " + life_counter, 100,100);
  
  box.update();
  box.render();
  obstacle.draw_balls();
  obstacle.draw_balls2();
  stage.draw_stage();
  die();
  
  }
  
  else
  {
   background(255,218,185);
  }
  
  
}

void die()
{
  
  if(dist(box.x, box.y, obstacle.x,obstacle.y)<=40)
  {
    life_counter--;
     start_again();
   
  }
  
  if(dist(box.x, box.y, obstacle.x2,obstacle.y2)<=40)
  {
    life_counter--;
     start_again();
    
  }
  if(dist(box.x, box.y, obstacle.x3,obstacle.y3)<=40)
  {
    life_counter--;
    start_again();
    
  }
  if(dist(box.x, box.y, obstacle.x4,obstacle.y4)<=40)
  {
    life_counter--;
  
    start_again();
  }
  
  
}

void start_again()
{
    box.x = 250;
    box.y = 500;
  
}


  