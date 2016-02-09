import java.util.*;
import ddf.minim.spi.*;
import ddf.minim.signals.*;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.ugens.*;
import ddf.minim.effects.*;

 boolean keyP;
 
Minim minim;
AudioPlayer song;

void setup()
{
  size(2000,1000);
  ball = new Ball();
  stage = new Stage();
  obstacle = new Obstacle();
  life_counter = 10;
  lives = 0;
  
  minim = new Minim(this);
  song = minim.loadFile("jump.mp3");
  
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
       start_again();
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
      win();
      
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
      
      textSize(30);
      text("speed = " + obstacle.speed, 30,30);
     // text("speed = " + obstacle.speed2, 20,30);
     
     
     break;     
     
     
    }
 
  }
}


  
void drawMenu()
{
  
  life_counter = 2;//lives go back to start when starting new game
  
  background(255,218,185);
  textSize(100);
  fill(255,51,51);
 
  
  fill(127,255,212);
  stroke(127,255,212);
  rect(600,500,500,100);//play 
  rect(600,700,500,100);//choose difficulty
  
  stroke(0);
  fill(0);
  
  text("THE WORLDS HARDEST GAME", 250, 200);
  textSize(40);
  text("Play game", 750,560 );
  text("Choose difficulty", 700,770 );
    
  

}

void win()
{
  
 if(ball.x > 1115)
  {
    background(255,218,185);
    textSize(100);
    text("YOU WIN!!!!", 500, 200);
    textSize(40);
    text("press 0 to go back to main menu!", 500, 500);
    
  
  }
  
}


void die()
{
  
  
  
  if(dist(ball.x, ball.y, obstacle.x,obstacle.y)<=40)
  {
    life_counter--;
     start_again();
     keyP=true;
      song.play();
      song.rewind();
   
  }
  
  if(dist(ball.x, ball.y, obstacle.x2,obstacle.y2)<=40)
  {
    life_counter--;
     start_again();
    keyP=true;
      song.play();
      song.rewind();
  }
  if(dist(ball.x, ball.y, obstacle.x3,obstacle.y3)<=40)
  {
    life_counter--;
    start_again();
    keyP=true;
      song.play();
      song.rewind();
    
  }
  if(dist(ball.x, ball.y, obstacle.x4,obstacle.y4)<=40)
  {
    life_counter--;
  
    start_again();
    keyP=true;
      song.play();
      song.rewind();
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
  if (key >= '0' && key <='9')//menu choice
  {
    mode = key - '0';
  }
  
 
      
    
}

//difficulty depends on speed of obstacles
//choose between 3 different speeds
//speed - easy = 5 medium = 10 hard = 15
void easy()
{
  obstacle.speed = 5;
  obstacle.speed2 = 5;
  
  //mode = 1;
}

void medium()
{
  obstacle.speed = 10;
  obstacle.speed2 = 10;
  
 // mode =1;
}

void hard()
{
  obstacle.speed = 15;
  obstacle.speed2 = 15;
  
  //mode = 1;
}


void mouseClicked()
{
  
  if(mode == 0)//if in menu to choose difficulty
  {
    
  if ((mouseX > 600) && (mouseX < 900) && (mouseY > 500) && (mouseY < 600)) //if touching medium box
  {
    mode =1;
  }
  
  if ((mouseX > 600) && (mouseX < 900) && (mouseY > 700) && (mouseY < 800)) //if touching hard box
  {
    mode =2;
  }
  
 
  
 }
  
  
  if(mode == 2)//if in menu to choose difficulty
  {
  if ((mouseX > 400) && (mouseX < 1400) && (mouseY > 200) && (mouseY < 300)) //if touching easy box
  {
    easy();
    
  }
  
  if ((mouseX > 400) && (mouseX < 1400) && (mouseY > 400) && (mouseY < 500)) //if touching medium box
  {
    medium();
     
  }
  
  if ((mouseX > 400) && (mouseX < 1400) && (mouseY > 600) && (mouseY < 700)) //if touching hard box
  {
    hard();
    
  }

  
  }
}








  