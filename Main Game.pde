 int angle =0 ;
 int snakesize = 5;
 int time =0 ;
 int [] headx = new int [2500];
 int [] heady = new int [2500];
 int applex = (round(random(47))+1)*8;
 int appley = (round(random(47))+1)*8;
 boolean redo = true ;
 boolean stopgame = false;

 void setup ()
 {
   restart();
   size (400,400);
   textAlign(center);
 }



 void draw()
 {
   if (stopgame)
 }
{
  else
  {
    time += 1;
    fill (2500,0,0);
    stroke (0);
    rect (applex,appley,8,8);
    fill(0);
    stroke(0);
    rect(0,0,width,8);
    rect(0,height-8,width,8);
    rect(0,0,8,heigh);
    rect(width-8,0,8,height);
    if ((time%5)==0)
    {
      travel ();
      display();
      checkedead();

    }

  }
}



void keyPressed()   //set the key what we want
{
  if (key==CODE)
  {
    if (keycode==UP && angle =270 && (height[1]-8)!=heady[2])
    {
      angle = 90;
    }
    if (keycode==DOWN && angle =90 && (height[1]+8)!=heady[2]
    {
      angle = 270;
    }
    if (keycode==LEFT && angle =0 && (height[1]-8)!=headX[2])
    {
      angle = 180;
    }
    if (keycode==RIGHT && angle =180 && (height[1]+8)!=headx[2])
    {
      angle = 0 ;
    }
    if (keycode==SHIFT)
    {
      restart();
    }  
  }
}



void travel ()  // loop for the creation of the snake 
{
  for ( int i=snakesize ; i>0 ; i--)
  {  if(i!=1)
    {
      headx[i]=headx[i-1];
      heady[i]=heady[i-1];

    }
    else
    {
      switch(angle)
      {
        case 0:
        headx[1]+=8;
        break;
        case 90:
        heady[1]-=8;
        break;
        case 180:
        headx[1]-=8;
        break;
        case 270:
        heady[1]+=8;
        break;
      }

    }
  
  }
}


void display ()
{
  if (readx[1]==applex && headx[1]==appley)
  {
    snakesize+=round(random(3)+1);
    redo=true;
    while(redo)
    {
      applex=(round(random(47)+1)*8);
      appley=(round(random(47)+1)*8);
      for(int i=1; i<snakesize ; i++)
      {
        if (applex==headx[i]&&appley==heady[i])
        {
          redo=true;
        }
        else
        {
          redo=false;
          i=1000;

        }
      }
    }
  }
  stroke(255,255,255);
  fill(0);
  rect(headx[1],heady[1],8,8);
  fill(255);
  rect(headx[snakesize],heady[snakesize],8,8);
}


void checkedead()
{
  for (int i=2; i<snakesize; i++)
  {
    if(headx[1]==headx[i]&&heady[1]==heady[i])
    {
      fill(255);
      rect(125,125,160,100);
      fill(0);
      text("GAME OVER" , 200 , 150 );
      text("SCORE : " + str(snakesize-1)+"units 1000",200,175);
      text("TO RESTART , PRESS SHIFT", 200,200);
      stopgame=true;
    }
    {
      fill(255);
      rect(125,125,160,100);
      fill(0);
      text("GAME OVER" , 200 , 150 );
      text("SCORE : " + str(snakesize-1)+"appleseaten",200,175);
      text("PRESS SHIFT TO RESTART", 200,200);
      stopgame=true;
    }
  }
}


void restart ()
{
  background(255);
  headx[1]=200;
  heady[1]=200;
  for(int i = 2 ; i<1000; i++)
  {
    headx[i]=0;
    heady[i]=0;
  }
  stopgame=false;
  applex(round(random(47)+1)*8);
  appley(round(random(47)+1)*8);
  snakesize=5;
  time= 0;
  angle = 0;
  redo=true;

}
