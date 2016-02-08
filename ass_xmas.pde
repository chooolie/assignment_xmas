void setup()
{
  size(2000,1000);
  ball = new Ball();
  stage = new Stage();
  obstacle = new Obstacle();
  life_counter = 10;
  lives = 0;
  
  //showing how long the game has been played for
  
  time = millis();//store the current time
  smooth();
  strokeWeight(3);
  

}


int wait = 1000;
int time;//divide my thousand to get second
boolean tick; // for ticker
int lives;
int life_counter, life;
Ball ball;
Stage stage;
Obstacle obstacle;

void draw()
{
 
   
  switch (mode)
  { 
    
    case 0:
    {
       drawMenu(); 
       break;
    }
  case 1:
    {
         
        if(life_counter >= lives)
      {
        
      if(millis() - time >= wait)
      {
        tick = !tick;
        time = millis();//update time
      }
      
      background(255,218,185);
      text((time/1000),100,100);//time left
      line(50,10,tick ? 10 : 90,90);//ticker
      
      stroke(127,255,212);
      textSize(40);
      text("Lifes = " + life_counter, 1600,100);
      
      ball.update();
      ball.render();
      obstacle.draw_balls();
      obstacle.draw_balls2();
      stage.draw_stage();
      die();
      
      }
      
      else
      {
       background(255,218,185);
       text("GAME OVER :(, YOU LOSE", 1000, 750);
       text("PRESS 0 TO GO BACK TO MENU", 1050, 800);
       
       
       
      }
  
   
      break;
    }
    
    case 2:
    {
      background(255,218,185);
      fill(127,255,212);
      stroke(127,255,212);
      rect(400,200,1000,100);
      rect(400,400,1000,100);
      rect(400,600,1000,100);
      
      
      stroke(0);
      fill(0);
      textSize(90);
      text("Easy", 780,280 );
      text("Medium", 750,480 );
      text("Hard", 780,680 );
      
     textSize(10);
      text("speed = " + obstacle.speed, 20,20);
     // text("speed = " + obstacle.speed2, 20,30);
     
     
     break;     
     
     
    }
 
  }
}


  
void drawMenu()
{
  
 life_counter = 2;
  background(255,218,185);
  stroke(255);
  strokeWeight(20);
  
  textSize(40);
  fill(255,51,51);
  
  text("PRESS 1 TO play game or 2 to change difficulty", 750, 500);

}


void die()
{
  
  if(dist(ball.x, ball.y, obstacle.x,obstacle.y)<=40)
  {
    life_counter--;
     start_again();
   
  }
  
  if(dist(ball.x, ball.y, obstacle.x2,obstacle.y2)<=40)
  {
    life_counter--;
     start_again();
    
  }
  if(dist(ball.x, ball.y, obstacle.x3,obstacle.y3)<=40)
  {
    life_counter--;
    start_again();
    
  }
  if(dist(ball.x, ball.y, obstacle.x4,obstacle.y4)<=40)
  {
    life_counter--;
  
    start_again();
  }
  
  
}

void start_again()
{
    ball.x = 250;
    ball.y = 500;
  
}


int mode = 0;

void keyPressed()
{
  if (key >= '0' && key <='9')
  {
    mode = key - '0';
  }
}


void easy()
{
  obstacle.speed = 5;
  obstacle.speed2 = 5;
}

void medium()
{
  obstacle.speed = 10;
  obstacle.speed2 = 10;
}

void hard()
{
  obstacle.speed = 15;
  obstacle.speed2 = 15;
}


void mouseClicked()
{
  if(mode == 2)
  {
  if ((mouseX > 400) && (mouseX < 1400) && (mouseY > 200) && (mouseY < 300)) 
  {
    easy();
  }
  
  if ((mouseX > 400) && (mouseX < 1400) && (mouseY > 400) && (mouseY < 500)) 
  {
    medium();
  }
  
  if ((mouseX > 400) && (mouseX < 1400) && (mouseY > 600) && (mouseY < 700)) 
  {
    hard();
  }

  
  }
}











  