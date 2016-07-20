/* please implement your assign1 code in this file. */

PImage bg1Ing;
PImage bg2Ing;
PImage fighterIng;
PImage hpIng;
PImage treasureIng;
PImage enemyIng;
int x1;
int y1;
int hp;
int e1;//enemy position
int e2;//enemy position
int bg1;
int bg2;



void setup () {
  size(640,480) ;  // must use this size.
  // your code
  
  bg1Ing = loadImage("img/bg1.png");
  bg2Ing = loadImage("img/bg2.png");
  fighterIng = loadImage("img/fighter.png");
  hpIng = loadImage("img/hp.png");
  treasureIng = loadImage("img/treasure.png");
  enemyIng = loadImage("img/enemy.png");
  x1 = floor(random(531));
  y1 = floor(random(50,441));
  hp = floor(random(30,221));
  e1 = 0;
  e2 = floor(random(50,441));
  bg1 = 0;
  bg2 = 640;

  
}

void draw() {
  // your code

  image(bg1Ing,bg1-640,0);
  image(bg2Ing,bg2-640,0);
  image(fighterIng,580,240);
  image(treasureIng,x1,y1);
  rectMode(CORNERS);
  rect(20,15,hp,35);
  fill(#ff0000);
  image(hpIng,15,15);
  image(enemyIng,e1,e2);
  

  e1 += 2;
  e1 %= 640;
  bg1 += 1;
  bg2 += 1;
  bg1 %= 1280;
  bg2 %= 1280;


}
