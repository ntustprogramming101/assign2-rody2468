int speedx,speedy,speedz,speed,soldierY,soldierX,w,z,m,hogX,hogY,heart1X,heart2X,heart3X,cabbageX,cabbageY,x,y;

final int GAME_START=1, GAME_LOSE=3, GAME_RUN=4;
PImage soldierImg;
PImage skyImg;  
PImage soilImg;
PImage heartImg;
PImage heart2Img;
PImage heart3Img;
PImage groundhogImg;
PImage robotImg;
PImage gameoverImg;
PImage titleImg;
PImage startNormal;
PImage startHovered;
PImage restartNormal;
PImage restartHovered;
PImage cabbageImg;
PImage groundhogDown;
PImage groundhogLeft;
PImage groundhogRight;
boolean uppressed = false;
boolean downpressed = false;
boolean leftpressed = false;
boolean rightpressed = false;

int gameState;


void setup() {
  gameState = GAME_START;
  size(640, 480, P2D);
  skyImg = loadImage("img/bg.jpg");
  soilImg = loadImage("img/soil.png");
  heartImg= loadImage("img/life.png");
  heart2Img= loadImage("img/life.png");
  heart3Img= loadImage("img/life.png");
  groundhogImg = loadImage("img/groundhogIdle.png");
  gameoverImg = loadImage ("img/gameover.jpg");
  titleImg = loadImage("img/title.jpg");
  startNormal = loadImage ("img/startNormal.png");
  startHovered = loadImage ("img/startHovered.png");
  restartNormal = loadImage ("img/restartNormal.png");
  restartHovered = loadImage ("img/restartHovered.png");
  cabbageImg = loadImage("img/cabbage.png");
  groundhogDown = loadImage("img/groundhogDown.png");
  groundhogLeft = loadImage("img/groundhogLeft.png");
  groundhogRight = loadImage("img/groundhogRight.png");
  heart1X=10; 
  heart2X=70;
  heart3X = -100;
  cabbageX=floor(random(8));
  cabbageY=floor(random(4));
  x=floor(random(4));
  y=floor(random(4));
  soldierY =(160+80*x);
  soldierX =0;
  soldierImg = loadImage("img/soldier.png");
  image (soldierImg,soldierX,soldierY,80,80);
  
}

void draw() {
  switch (gameState){
    case GAME_START:
      image (titleImg,0,0,640,480);
      image (startNormal,248,360,144,60);
      if(mouseX<392&&mouseX>248&&mouseY<420&&mouseY>360){
        image (startHovered,248,360,144,60);
        if(mousePressed){
          gameState = GAME_RUN;
        }
       }
    break;
    
    case GAME_LOSE:
       image(gameoverImg,0,0,640,480); 
       image(restartNormal,248,360,144,60);
        if(mouseX<392&&mouseX>248&&mouseY<420&&mouseY>360){
           image (restartHovered,248,360,144,60);
           if(mousePressed){
            gameState = GAME_RUN;
            hogX = 0;
            hogY = 0;
            heart2X=70;
            x=floor(random(4));
             soldierY =(160+80*x);
            cabbageX=100;
            cabbageX=floor(random(8));
            cabbageY=floor(random(4));
           }
        }
    break;
 
    case GAME_RUN:
      image (skyImg,0,0,640,480);
      image (soilImg,0,160,640,320);
      image (heartImg,heart1X,10,50,50);
      image (heart2Img,heart2X,10,50,50);
      image (heart3Img,heart3X,10,50,50);
      
      
      noStroke();
      fill(RGB);
      fill(124,204,25);
      rect(0,145,680,15);
      noStroke();
      fill(255,255,0);
      ellipse(590,50,125,125);
      fill(253,184,19);
      ellipse(590,50,120,120);
      image (groundhogImg,320+hogX,80+hogY,80,80);
      image (soldierImg,-50+soldierX,soldierY,80,80);
      w+=5;
      soldierX = w % 720;
      image (cabbageImg,80*cabbageX,160+80*cabbageY,80,80);
    
      if(hogY<0)hogY=0;
      if(hogY>320)hogY=320;
      if(hogX<-320)hogX=-320;
      if(hogX>240)hogX=240;
int speedx,speedy,speedz,speed,soldierY,soldierX,w,z,m,hogX,hogY,heart1X,heart2X,heart3X,cabbageX,cabbageY,x,y;

final int GAME_START=1, GAME_LOSE=3, GAME_RUN=4;
PImage soldierImg;
PImage skyImg;  
PImage soilImg;
PImage heartImg;
PImage heart2Img;
PImage heart3Img;
PImage groundhogImg;
PImage robotImg;
PImage gameoverImg;
PImage titleImg;
PImage startNormal;
PImage startHovered;
PImage restartNormal;
PImage restartHovered;
PImage cabbageImg;
PImage groundhogDown;
PImage groundhogLeft;
PImage groundhogRight;
boolean uppressed = false;
boolean downpressed = false;
boolean leftpressed = false;
boolean rightpressed = false;

int gameState;


void setup() {
  gameState = GAME_START;
  size(640, 480, P2D);
  skyImg = loadImage("img/bg.jpg");
  soilImg = loadImage("img/soil.png");
  heartImg= loadImage("img/life.png");
  heart2Img= loadImage("img/life.png");
  heart3Img= loadImage("img/life.png");
  groundhogImg = loadImage("img/groundhogIdle.png");
  gameoverImg = loadImage ("img/gameover.jpg");
  titleImg = loadImage("img/title.jpg");
  startNormal = loadImage ("img/startNormal.png");
  startHovered = loadImage ("img/startHovered.png");
  restartNormal = loadImage ("img/restartNormal.png");
  restartHovered = loadImage ("img/restartHovered.png");
  cabbageImg = loadImage("img/cabbage.png");
  groundhogDown = loadImage("img/groundhogDown.png");
  groundhogLeft = loadImage("img/groundhogLeft.png");
  groundhogRight = loadImage("img/groundhogRight.png");
  heart1X=10; 
  heart2X=80;
  heart3X = -100;
  cabbageX=floor(random(8));
  cabbageY=floor(random(4));
  x=floor(random(4));
  y=floor(random(4));
  soldierY =(160+80*x);
  soldierX =0;
  soldierImg = loadImage("img/soldier.png");
  image (soldierImg,soldierX,soldierY,80,80);
  
}

void draw() {
  switch (gameState){
    case GAME_START:
      image (titleImg,0,0,640,480);
      image (startNormal,248,360,144,60);
      if(mouseX<392&&mouseX>248&&mouseY<420&&mouseY>360){
        image (startHovered,248,360,144,60);
        if(mousePressed){
          gameState = GAME_RUN;
        }
       }
    break;
    
    case GAME_LOSE:
       image(gameoverImg,0,0,640,480); 
       image(restartNormal,248,360,144,60);
        if(mouseX<392&&mouseX>248&&mouseY<420&&mouseY>360){
           image (restartHovered,248,360,144,60);
           if(mousePressed){
            gameState = GAME_RUN;
            hogX = 0;
            hogY = 0;
            heart2X=80;
            x=floor(random(4));
             soldierY =(160+80*x);
            cabbageX=100;
            cabbageX=floor(random(8));
            cabbageY=floor(random(4));
           }
        }
    break;
 
    case GAME_RUN:
      image (skyImg,0,0,640,480);
      image (soilImg,0,160,640,320);
      image (heartImg,heart1X,10,50,50);
      image (heart2Img,heart2X,10,50,50);
      image (heart3Img,heart3X,10,50,50);
      
      
      noStroke();
      fill(RGB);
      fill(124,204,25);
      rect(0,145,680,15);
      noStroke();
      fill(255,255,0);
      ellipse(590,50,130,130);
      fill(253,184,19);
      ellipse(590,50,120,120);
      image (groundhogImg,320+hogX,80+hogY,80,80);
      image (soldierImg,-50+soldierX,soldierY,80,80);
      w+=5;
      soldierX = w % 720;
      image (cabbageImg,80*cabbageX,160+80*cabbageY,80,80);
    
      if(hogY<0)hogY=0;
      if(hogY>320)hogY=320;
      if(hogX<-320)hogX=-320;
      if(hogX>240)hogX=240;
      if(320+hogX<-50+soldierX+80&&320+hogX+80>-50+soldierX&&80+hogY<soldierY+80&&80+hogY+80>soldierY&&heart2X==80&&heart3X==150){
        hogX=0;  hogY=0;  heart3X=-100; }
   
      if(320+hogX<-50+soldierX+80&&320+hogX+80>-50+soldierX&&80+hogY<soldierY+80&&80+hogY+80>soldierY&&heart2X==-100){
        gameState = GAME_LOSE;
      }
        if(320+hogX<-50+soldierX+80&&320+hogX+80>-50+soldierX&&80+hogY<soldierY+80&&80+hogY+80>soldierY&&heart2X==80&&heart3X==-100){
        hogX=0;  hogY=0;  heart2X=-100;
      }
         if(320+hogX<80*cabbageX+80 && 320+hogX+80>80*cabbageX && 80+hogY<160+80*cabbageY+80 && 80+hogY+80>160+80*cabbageY && heart2X==80){
        heart3X = 150;
        cabbageX=-100;
      }
      if(320+hogX<80*cabbageX+80 && 320+hogX+80>80*cabbageX && 80+hogY<160+80*cabbageY+80 && 80+hogY+80>160+80*cabbageY && heart2X==-100){
        heart2X = 80;
        cabbageX=-100;
      }
        if(320+hogX<80*cabbageX+80 && 320+hogX+80>80*cabbageX && 80+hogY<160+80*cabbageY+80 && 80+hogY+80>160+80*cabbageY && heart3X==-100){
        heart2X =-100;
        cabbageX=-100;
      }
    break;
    }
}

void keyPressed(){
  if(key == CODED){
    switch(keyCode){
      case UP:
      hogY -=80;
      break;
      case DOWN:
      hogY +=80;
      break;
      case LEFT:
      hogX-=80;
      break;
      case RIGHT:
      hogX+=80;
      break;
      
      
    }
  if(hogY<0)hogY=0;
      if(hogY>320)hogY=320;
      if(hogX<-320)hogX=-320;
      if(hogX>240)hogX=240;}
}

void keyReleased(){
  if (key == CODED){
    switch (keyCode){
      case UP:
       uppressed = false;
      break;
      case DOWN:
       downpressed = false;
      break;
      case LEFT:
       leftpressed = false;
      break;
      case RIGHT:
       rightpressed = false;
      break;
   }
  }
}
